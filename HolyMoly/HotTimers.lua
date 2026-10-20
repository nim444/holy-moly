-- HoT and shield timers: a panel under the box with one row per group member who has your heals over time,
-- shields or Weakened Soul on them, each shown as an icon with a cooldown sweep.
--
-- In combat the aura details are secret, so nothing here reads them: the "RAID_IN_COMBAT" filter picks your own
-- HoTs and shields, the icon goes straight to SetTexture, and the timer is the game's own duration object handed
-- to a Cooldown frame (C_UnitAuras.GetAuraDuration), the way Blizzard's aura buttons do it.

local _, ns = ...

local HOT_FILTER = "HELPFUL|PLAYER|RAID_IN_COMBAT"
local WEAKENED_SOUL_FILTER = "HARMFUL|PLAYER" -- the only debuff a Priest puts on friends
local MAX_ROWS = 10
local MAX_ICONS = 5
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

-- Your HoTs and shields on a unit, then Weakened Soul: a list of aura instance IDs.
local function TrackedAuras(unit)
	local ids = {}
	for _, filter in ipairs({ HOT_FILTER, WEAKENED_SOUL_FILTER }) do
		for _, id in ipairs(C_UnitAuras.GetUnitAuraInstanceIDs(unit, filter) or {}) do
			ids[#ids + 1] = id
		end
	end
	return ids
end

local function FillRow(row, unit, ids)
	-- In Forever the first return is the first name; in combat it may be secret, which SetText accepts.
	row.name:SetText((UnitName(unit)))
	for i, icon in ipairs(row.icons) do
		local id = ids[i]
		if id then
			local aura = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, id)
			icon.texture:SetTexture(aura and aura.icon)
			icon.cooldown:SetCooldownFromDurationObject(C_UnitAuras.GetAuraDuration(unit, id))
			icon:Show()
		else
			icon:Hide()
		end
	end
	row:Show()
end

local function Update()
	local shown = 0
	for _, unit in ipairs(GroupUnits()) do
		if shown == MAX_ROWS then
			break
		end
		if UnitExists(unit) then
			local ids = TrackedAuras(unit)
			if #ids > 0 then
				shown = shown + 1
				FillRow(GetRow(shown), unit, ids)
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
