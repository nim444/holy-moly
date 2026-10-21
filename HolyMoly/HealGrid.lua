-- Heal grid: a button for each party or raid member that lights up with a red border when they drop under the
-- threshold (30% by default) and stays faint above it. A left click casts Flash Heal on them, a right click a bigger
-- heal. Works in combat.
--
-- Forever keeps everyone's health secret from addons, so the code never compares it: the game evaluates two step
-- curves on each health percent and the results go straight to SetAlpha. The buttons are secure unit buttons with
-- fixed units (player and party1-4 in a party, raid1-40 in a raid); the game shows and hides them as the group
-- changes, also in combat.
--
-- Secure buttons lock their parent and whatever they are anchored to in combat, so the grid is its own frame with
-- its own drag handle and saved position instead of hanging under the box.

local _, ns = ...

-- The first spell of each list the player knows goes on that mouse button.
local LEFT_SPELLS = { "Flash Heal", "Lesser Heal" }
local RIGHT_SPELLS = { "Greater Heal", "Heal", "Lesser Heal" }
local BUTTON_WIDTH, BUTTON_HEIGHT, GAP = 60, 22, 2
local COLUMNS = 5
local FADED_ALPHA = 0.4
local HANDLE_HEIGHT = 14

local grid = CreateFrame("Frame", "HolyMolyHealGrid", UIParent)
grid:SetSize(COLUMNS * BUTTON_WIDTH + (COLUMNS - 1) * GAP, HANDLE_HEIGHT + 8 * (BUTTON_HEIGHT + GAP))
grid:SetClampedToScreen(true)
grid:SetMovable(true)

-- Changes to secure frames wait until combat ends.
local waiting = {}
local function OutOfCombat(fn)
	if InCombatLockdown() then
		waiting[fn] = true
	else
		fn()
	end
end

local function SavePosition()
	local point, _, relativePoint, x, y = grid:GetPoint()
	HolyMolyDB.healGridPosition = { point, relativePoint, x, y }
end

local function RestorePosition()
	local pos = HolyMolyDB.healGridPosition
	grid:ClearAllPoints()
	if pos then
		grid:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		-- Beside the box's default spot.
		grid:SetPoint("TOPLEFT", UIParent, "CENTER", 100, -117)
	end
end

-- Only the title strip takes the mouse, so the empty part of the grid doesn't block clicks on the world.
local handle = CreateFrame("Frame", nil, grid)
handle:SetPoint("TOPLEFT")
handle:SetPoint("TOPRIGHT")
handle:SetHeight(HANDLE_HEIGHT)
handle:EnableMouse(true)
handle:RegisterForDrag("LeftButton")
local title = handle:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
title:SetPoint("LEFT", 2, 0)
title:SetText("Holy Moly heals")
handle:SetScript("OnDragStart", function()
	if not ns.Get("lock") and not InCombatLockdown() then
		grid:StartMoving()
	end
end)
handle:SetScript("OnDragStop", function()
	grid:StopMovingOrSizing()
	SavePosition()
end)
handle:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOP")
	GameTooltip:SetText("Holy Moly heals")
	GameTooltip:AddLine("A button lights up red when that person drops under " .. ns.Get("healGridPercent")
		.. "% health. Drag here to move the grid (out of combat).", 1, 1, 1, true)
	GameTooltip:Show()
end)
handle:SetScript("OnLeave", GameTooltip_Hide)

local lowCurve = C_CurveUtil.CreateCurve()
lowCurve:SetType(Enum.LuaCurveType.Step)
local fadeCurve = C_CurveUtil.CreateCurve()
fadeCurve:SetType(Enum.LuaCurveType.Step)

local buttons = {}
local leftSpell, rightSpell

local function UpdateButton(button)
	local unit = button.unit
	button.name:SetText(UnitName(unit))
	button.health:SetMinMaxValues(0, UnitHealthMax(unit))
	button.health:SetValue(UnitHealth(unit))
	if UnitIsDeadOrGhost(unit) or not UnitIsConnected(unit) then
		button.content:SetAlpha(FADED_ALPHA)
		button.low:SetAlpha(0)
	else
		button.content:SetAlpha(UnitHealthPercent(unit, true, fadeCurve))
		button.low:SetAlpha(UnitHealthPercent(unit, true, lowCurve))
	end
end

local reportedError = false

local function UpdateAll()
	handle:SetShown(IsInGroup())
	for _, button in ipairs(buttons) do
		if button:IsVisible() then
			local ok, err = pcall(UpdateButton, button)
			if not ok and not reportedError then
				reportedError = true
				print("Holy Moly heal grid error: " .. tostring(err))
			end
		end
	end
end

-- UNIT_HEALTH fires very often in a raid, so updates are gathered into one per short moment.
local queued = false
local function QueueUpdate()
	if not queued then
		queued = true
		C_Timer.After(0.1, function()
			queued = false
			UpdateAll()
		end)
	end
end

local function ShowTooltip(self)
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	GameTooltip:SetUnit(self.unit)
	if leftSpell then
		GameTooltip:AddLine("Left click: " .. leftSpell, 0.6, 0.8, 1)
	end
	if rightSpell then
		GameTooltip:AddLine("Right click: " .. rightSpell, 0.6, 0.8, 1)
	end
	GameTooltip:Show()
end

local function CreateUnitButton(parent, unit, index)
	local button = CreateFrame("Button", nil, parent, "SecureUnitButtonTemplate")
	button.unit = unit
	button:SetSize(BUTTON_WIDTH, BUTTON_HEIGHT)
	local column, row = (index - 1) % COLUMNS, math.floor((index - 1) / COLUMNS)
	button:SetPoint("TOPLEFT", column * (BUTTON_WIDTH + GAP), -row * (BUTTON_HEIGHT + GAP))
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	button:SetAttribute("unit", unit)
	button:SetAttribute("type1", "spell")
	button:SetAttribute("type2", "spell")

	-- Everything you see sits on a plain child frame, whose alpha can change in combat.
	local content = CreateFrame("Frame", nil, button)
	content:SetAllPoints()
	button.content = content
	local background = content:CreateTexture(nil, "BACKGROUND")
	background:SetAllPoints()
	background:SetColorTexture(0, 0, 0, 0.75)

	local health = CreateFrame("StatusBar", nil, content)
	health:SetPoint("TOPLEFT", 1, -1)
	health:SetPoint("BOTTOMRIGHT", -1, 1)
	health:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	health:SetStatusBarColor(0.1, 0.75, 0.25)
	button.health = health

	local name = health:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	name:SetPoint("LEFT", 3, 0)
	name:SetPoint("RIGHT", -3, 0)
	name:SetJustifyH("LEFT")
	name:SetWordWrap(false)
	button.name = name

	local low = CreateFrame("Frame", nil, content, "BackdropTemplate")
	low:SetAllPoints()
	low:SetFrameLevel(health:GetFrameLevel() + 1)
	low:SetBackdrop({ edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 2 })
	low:SetBackdropBorderColor(1, 0.1, 0.1)
	low:SetAlpha(0)
	button.low = low

	button:HookScript("OnEnter", ShowTooltip)
	button:HookScript("OnLeave", GameTooltip_Hide)
	button:HookScript("OnShow", QueueUpdate)
	RegisterUnitWatch(button)
	buttons[#buttons + 1] = button
end

local function FirstKnown(spells)
	for _, spell in ipairs(spells) do
		if ns.Knows(spell) then
			return spell
		end
	end
end

local function ApplySpells()
	leftSpell, rightSpell = FirstKnown(LEFT_SPELLS), FirstKnown(RIGHT_SPELLS)
	for _, button in ipairs(buttons) do
		button:SetAttribute("spell1", leftSpell)
		button:SetAttribute("spell2", rightSpell)
	end
end

-- One set of buttons for a party and one for a raid; the game shows the right one, also in combat.
local function Build()
	local party = CreateFrame("Frame", nil, grid)
	party:SetPoint("TOPLEFT", 0, -HANDLE_HEIGHT)
	party:SetSize(1, 1)
	RegisterStateDriver(party, "visibility", "[group:raid] hide; [group:party] show; hide")
	CreateUnitButton(party, "player", 1)
	for i = 1, 4 do
		CreateUnitButton(party, "party" .. i, i + 1)
	end

	local raid = CreateFrame("Frame", nil, grid)
	raid:SetPoint("TOPLEFT", 0, -HANDLE_HEIGHT)
	raid:SetSize(1, 1)
	RegisterStateDriver(raid, "visibility", "[group:raid] show; hide")
	for i = 1, 40 do
		CreateUnitButton(raid, "raid" .. i, i)
	end

	ApplySpells()
	QueueUpdate()
end

ns.OnSettingChanged("healGridPercent", function(percent)
	lowCurve:ClearPoints()
	lowCurve:AddPoint(0, 1)
	lowCurve:AddPoint(percent / 100, 0)
	fadeCurve:ClearPoints()
	fadeCurve:AddPoint(0, 1)
	fadeCurve:AddPoint(percent / 100, FADED_ALPHA)
	QueueUpdate()
end)
ns.OnSettingChanged("healGrid", function()
	OutOfCombat(function()
		grid:SetShown(ns.Get("healGrid"))
	end)
end)
ns.OnSettingChanged("scale", function()
	OutOfCombat(function()
		grid:SetScale(ns.Get("scale"))
	end)
end)

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_REGEN_ENABLED")
frame:RegisterEvent("SPELLS_CHANGED")
frame:RegisterEvent("GROUP_ROSTER_UPDATE")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("UNIT_HEALTH")
frame:RegisterEvent("UNIT_MAXHEALTH")
frame:RegisterEvent("UNIT_CONNECTION")
frame:RegisterEvent("UNIT_NAME_UPDATE")
frame:SetScript("OnEvent", function(_, event)
	if event == "PLAYER_LOGIN" then
		-- Settings.lua has set up HolyMolyDB on ADDON_LOADED.
		OutOfCombat(RestorePosition)
		OutOfCombat(Build)
	elseif event == "PLAYER_REGEN_ENABLED" then
		for fn in pairs(waiting) do
			waiting[fn] = nil
			fn()
		end
	elseif event == "SPELLS_CHANGED" then
		OutOfCombat(ApplySpells)
	end
	QueueUpdate()
end)
