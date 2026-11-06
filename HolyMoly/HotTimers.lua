-- HoT and shield timers: a panel under the box with one row per group member who has your heals over time,
-- shields or Weakened Soul on them, or a debuff you can dispel, each shown as an icon with a cooldown sweep.
-- Dispellable debuffs come first, with a red border.
--
-- In combat the aura details are secret, so nothing here reads them: the "RAID_IN_COMBAT" filter picks your own
-- HoTs and shields, the icon goes straight to SetTexture, and the timer is the game's own duration object handed
-- to a Cooldown frame (C_UnitAuras.GetAuraDuration), the way Blizzard's aura buttons do it.

local _, ns = ...

local HOT_FILTER = "HELPFUL|PLAYER|RAID_IN_COMBAT"
local WEAKENED_SOUL_FILTER = "HARMFUL|PLAYER" -- debuffs you put on friends: Weakened Soul, but on yourself also others
local WEAKENED_SOUL_ID = 6788
local WEAKENED_SOUL_NAME = "Weakened Soul"
local DISPEL_FILTER = "HARMFUL|RAID" -- harmful auras you can dispel
local MAX_ROWS = 10
local MAX_ICONS = 6
local ICON_SIZE = 18
local ROW_HEIGHT = 20

local panel = CreateFrame("Frame", nil, ns.box, "BackdropTemplate")
panel:SetPoint("TOPLEFT", ns.box, "BOTTOMLEFT", 0, -2)
panel:SetPoint("TOPRIGHT", ns.box, "BOTTOMRIGHT", 0, -2)
panel:SetHeight(1)
panel:SetBackdrop(ns.BACKDROP)
panel:SetBackdropColor(1, 1, 1, 0.9)
panel:Hide()
-- BuffCheck.lua hangs its buttons under this panel, or under the box while the panel is hidden.
ns.timerPanel = panel

local rows = {}

local function GetRow(index)
	if rows[index] then
		return rows[index]
	end
	local row = CreateFrame("Frame", nil, panel)
	row:SetHeight(ROW_HEIGHT)
	row:SetPoint("TOPLEFT", 10, -6 - (index - 1) * ROW_HEIGHT)
	row:SetPoint("TOPRIGHT", -10, -6 - (index - 1) * ROW_HEIGHT)
	row.name = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	row.name:SetPoint("LEFT")
	row.name:SetWidth(60)
	row.name:SetJustifyH("LEFT")
	row.name:SetWordWrap(false)
	row.icons = {}
	for i = 1, MAX_ICONS do
		local icon = CreateFrame("Frame", nil, row)
		icon:SetSize(ICON_SIZE, ICON_SIZE)
		icon:SetPoint("LEFT", row.name, "RIGHT", 2 + (i - 1) * (ICON_SIZE + 2), 0)
		icon.border = icon:CreateTexture(nil, "BACKGROUND")
		icon.border:SetPoint("TOPLEFT", -1, 1)
		icon.border:SetPoint("BOTTOMRIGHT", 1, -1)
		icon.border:SetColorTexture(1, 0.1, 0.1)
		icon.texture = icon:CreateTexture(nil, "ARTWORK")
		icon.texture:SetAllPoints()
		icon.cooldown = CreateFrame("Cooldown", nil, icon, "CooldownFrameTemplate")
		icon.cooldown:SetAllPoints()
		icon.cooldown:SetReverse(true)
		icon.cooldown:SetDrawEdge(false)
		icon.cooldown:SetHideCountdownNumbers(false)
		row.icons[i] = icon
	end
	rows[index] = row
	return row
end

local function GroupUnits()
	local units = {}
	if IsInRaid() then
		for i = 1, GetNumGroupMembers() do
			units[#units + 1] = "raid" .. i
		end
	else
		units[1] = "player"
		for i = 1, GetNumSubgroupMembers() do
			units[#units + 1] = "party" .. i
		end
	end
	return units
end

-- The aura instance of Weakened Soul on a unit, or nil. A debuff you put on yourself (some items and quests do)
-- also passes the "PLAYER" filter, so each one is checked by spell ID or name; when the game keeps both secret,
-- it counts only on others, where Weakened Soul is the only debuff a Priest leaves.
function ns.WeakenedSoul(unit)
	local ok, aura = pcall(C_UnitAuras.GetUnitAuraBySpellID, unit, WEAKENED_SOUL_ID)
	if ok and aura and aura.auraInstanceID and not issecretvalue(aura.auraInstanceID) then
		return aura.auraInstanceID
	end
	local isPlayer = UnitIsUnit(unit, "player")
	for _, id in ipairs(C_UnitAuras.GetUnitAuraInstanceIDs(unit, WEAKENED_SOUL_FILTER) or {}) do
		local data = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, id)
		local spellId, name = data and data.spellId, data and data.name
		local idKnown = spellId ~= nil and not issecretvalue(spellId)
		local nameKnown = name ~= nil and not issecretvalue(name)
		-- Forever may give Weakened Soul its own spell ID, so the name counts as much as the Classic ID.
		if (idKnown and spellId == WEAKENED_SOUL_ID) or (nameKnown and name == WEAKENED_SOUL_NAME) then
			return id
		elseif not idKnown and not nameKnown and not isPlayer then
			return id
		end
	end
end

-- /holy soul: what the game reports for each group member, to see why Weakened Soul does or doesn't show.
function ns.DebugWeakenedSoul()
	for _, unit in ipairs(GroupUnits()) do
		if UnitExists(unit) then
			local parts = {}
			for _, id in ipairs(C_UnitAuras.GetUnitAuraInstanceIDs(unit, WEAKENED_SOUL_FILTER) or {}) do
				local data = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, id)
				local spellId = data and data.spellId
				parts[#parts + 1] = (spellId == nil and "no data") or (issecretvalue(spellId) and "secret")
					or tostring(spellId)
			end
			local ok, soul = pcall(ns.WeakenedSoul, unit)
			local name = UnitName(unit)
			print(("Holy Moly soul: %s: your debuffs [%s], Weakened Soul %s"):format(
				(name and not issecretvalue(name)) and name or unit, table.concat(parts, ", "),
				not ok and ("error: " .. tostring(soul)) or (soul and "found" or "not found")))
		end
	end
end

-- Debuffs you can dispel (when that setting is on), then your HoTs and shields, then Weakened Soul:
-- { { id = auraInstanceID, dispel = true }, ... }
local function TrackedAuras(unit)
	local auras = {}
	local function Add(filter, dispel)
		for _, id in ipairs(C_UnitAuras.GetUnitAuraInstanceIDs(unit, filter) or {}) do
			auras[#auras + 1] = { id = id, dispel = dispel }
		end
	end
	if ns.Get("dispels") then
		Add(DISPEL_FILTER, true)
	end
	Add(HOT_FILTER, false)
	local ok, soul = pcall(ns.WeakenedSoul, unit)
	if ok and soul then
		auras[#auras + 1] = { id = soul, dispel = false }
	end
	return auras
end

local function FillRow(row, unit, auras)
	-- In Forever the first return is the first name; in combat it may be secret, which SetText accepts.
	row.name:SetText((UnitName(unit)))
	for i, icon in ipairs(row.icons) do
		local tracked = auras[i]
		if tracked then
			local aura = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, tracked.id)
			icon.texture:SetTexture(aura and aura.icon)
			icon.cooldown:SetCooldownFromDurationObject(C_UnitAuras.GetAuraDuration(unit, tracked.id))
			icon.border:SetShown(tracked.dispel)
			icon:Show()
		else
			icon:Hide()
		end
	end
	row:Show()
end

local function Update()
	local shown = 0
	if not ns.Get("timers") then
		for _, row in ipairs(rows) do
			row:Hide()
		end
		panel:SetHeight(1)
		panel:Hide()
		return
	end
	for _, unit in ipairs(GroupUnits()) do
		if shown == MAX_ROWS then
			break
		end
		if UnitExists(unit) then
			local auras = TrackedAuras(unit)
			if #auras > 0 then
				shown = shown + 1
				FillRow(GetRow(shown), unit, auras)
			end
		end
	end
	for i = shown + 1, #rows do
		rows[i]:Hide()
	end
	-- Hidden, the panel shrinks to a sliver so the buff buttons under it sit right below the box.
	panel:SetHeight(shown > 0 and shown * ROW_HEIGHT + 12 or 1)
	panel:SetShown(shown > 0)
end

local reportedError = false

local function SafeUpdate()
	local ok, err = pcall(Update)
	if not ok and not reportedError then
		reportedError = true
		print("Holy Moly timers error: " .. tostring(err))
	end
end

-- UNIT_AURA fires very often in a group, so updates are gathered into one per short moment.
local queued = false
local function QueueUpdate()
	if not queued then
		queued = true
		C_Timer.After(0.1, function()
			queued = false
			SafeUpdate()
		end)
	end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("GROUP_ROSTER_UPDATE")
frame:RegisterEvent("UNIT_AURA")
frame:SetScript("OnEvent", QueueUpdate)
ns.OnSettingChanged("timers", QueueUpdate)
ns.OnSettingChanged("dispels", QueueUpdate)
