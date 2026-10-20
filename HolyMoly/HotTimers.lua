-- HoT and shield timers: a panel under the box with one row per group member who has your heals over time,
-- shields or Weakened Soul on them, or a debuff you can dispel, each shown as an icon with a cooldown sweep.
-- Dispellable debuffs come first, with a red border.
--
-- In combat the aura details are secret, so nothing here reads them: the "RAID_IN_COMBAT" filter picks your own
-- HoTs and shields, the icon goes straight to SetTexture, and the timer is the game's own duration object handed
-- to a Cooldown frame (C_UnitAuras.GetAuraDuration), the way Blizzard's aura buttons do it.

local _, ns = ...

local HOT_FILTER = "HELPFUL|PLAYER|RAID_IN_COMBAT"
local WEAKENED_SOUL_FILTER = "HARMFUL|PLAYER" -- the only debuff a Priest puts on friends
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
	Add(WEAKENED_SOUL_FILTER, false)
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
