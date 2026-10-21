-- Heal grid: a button for each party or raid member that lights up with a red border when they drop under the
-- threshold (30% by default) and stays faint above it. A left click casts Flash Heal on them, a right click the
-- biggest heal, a middle click Renew, a shift + left click Power Word: Shield; each can be changed in the settings.
-- Works in combat.
--
-- Forever keeps everyone's health secret from addons, so the code never compares it: the game evaluates two step
-- curves on each health percent and the results go straight to SetAlpha. The buttons are secure unit buttons with
-- fixed units (player and party1-4 in a party, raid1-40 in a raid); the game shows and hides them as the group
-- changes, also in combat.
--
-- Secure buttons lock their parent and whatever they are anchored to in combat, so the grid is its own frame with
-- its own drag handle and saved position instead of hanging under the box.

local _, ns = ...

-- "Biggest heal" in the click settings: the first of these the player knows.
local BIGGEST_HEALS = { "Greater Heal", "Heal", "Lesser Heal" }
-- What a click casts while its spell isn't learned yet; any other unlearned spell casts the biggest heal.
local STAND_INS = { ["Flash Heal"] = "Lesser Heal" }
-- The clicks by the secure attributes they set ("shift-" makes an attribute apply only with Shift held), with the
-- setting that picks what each does.
local CLICKS = {
	{ type = "type1", spell = "spell1", key = "healLeft", label = "Left click" },
	{ type = "type2", spell = "spell2", key = "healRight", label = "Right click" },
	{ type = "type3", spell = "spell3", key = "healMiddle", label = "Middle click" },
	{ type = "shift-type1", spell = "shift-spell1", key = "healShiftLeft", label = "Shift + left click" },
}
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

-- /holy check: for a minute, each heal-button click prints the spell it really cast (see ns.CheckHealButtons).
local CHECK_SECONDS = 60
local checkUntil = 0
local ReportClick

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
	for _, click in ipairs(CLICKS) do
		if click.text then
			GameTooltip:AddLine(click.label .. ": " .. click.text, 0.6, 0.8, 1)
		end
	end
	GameTooltip:Show()
end

local function CreateUnitButton(parent, unit, index)
	local button = CreateFrame("Button", nil, parent, "SecureUnitButtonTemplate")
	button.unit = unit
	button:SetSize(BUTTON_WIDTH, BUTTON_HEIGHT)
	local column, row = (index - 1) % COLUMNS, math.floor((index - 1) / COLUMNS)
	button:SetPoint("TOPLEFT", column * (BUTTON_WIDTH + GAP), -row * (BUTTON_HEIGHT + GAP))
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp", "MiddleButtonUp")
	button:SetAttribute("unit", unit)

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
	-- The missing health shows red behind the green.
	local missing = health:CreateTexture(nil, "BACKGROUND")
	missing:SetAllPoints()
	missing:SetColorTexture(0.65, 0.08, 0.08, 0.9)
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
	button:HookScript("PostClick", function(_, mouseButton)
		if GetTime() < checkUntil then
			local clickTime, shift = GetTime(), IsShiftKeyDown()
			C_Timer.After(0.3, function()
				ReportClick(mouseButton, shift, clickTime)
			end)
		end
	end)
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

-- What a click setting does: an action type and, for a spell, its name (nil when no spell fits). A spell the
-- player hasn't learned yet (Flash Heal before level 20) is replaced by its stand-in or the biggest heal until then.
local function ClickAction(choice)
	if choice == "TARGET" then
		return "target"
	elseif choice ~= "BIGGEST" and ns.Knows(choice) then
		return "spell", choice
	elseif STAND_INS[choice] and ns.Knows(STAND_INS[choice]) then
		return "spell", STAND_INS[choice]
	end
	return "spell", FirstKnown(BIGGEST_HEALS)
end

local function ApplySpells()
	for _, click in ipairs(CLICKS) do
		local actionType, spell = ClickAction(ns.Get(click.key))
		click.text = actionType == "target" and "Target" or spell
		for _, button in ipairs(buttons) do
			button:SetAttribute(click.type, actionType)
			button:SetAttribute(click.spell, spell)
		end
	end
end

local CLICK_LABELS = { LeftButton = "Left click", RightButton = "Right click", MiddleButton = "Middle click" }

-- Prints what each click is set to, read back from a button's secure attributes, and starts the cast check.
function ns.CheckHealButtons()
	local button = buttons[1]
	if not button then
		print("Holy Moly: the heal buttons aren't built yet (they are made out of combat).")
		return
	end
	for _, click in ipairs(CLICKS) do
		local actionType = button:GetAttribute(click.type)
		local spell = button:GetAttribute(click.spell)
		local detail = actionType == "spell" and (tostring(spell) .. (spell and ns.Knows(spell) and "" or " (not known!)"))
			or tostring(actionType)
		print(("Holy Moly check: %s = %s"):format(click.label, detail))
	end
	checkUntil = GetTime() + CHECK_SECONDS
	print("Holy Moly check: for the next minute, each heal-button click prints the spell it cast.")
end

-- The player's last cast, from UNIT_SPELLCAST_SENT, which comes in the same moment as the click that cast it.
local sentTarget, sentSpellID, sentTime = nil, nil, 0
local checkFrame = CreateFrame("Frame")
checkFrame:RegisterUnitEvent("UNIT_SPELLCAST_SENT", "player")
checkFrame:SetScript("OnEvent", function(_, _, _, target, _, spellID)
	sentTarget, sentSpellID, sentTime = target, spellID, GetTime()
end)

function ReportClick(mouseButton, shift, clickTime)
	local label = CLICK_LABELS[mouseButton] or mouseButton
	if shift then
		label = "Shift + " .. label:lower()
	end
	if sentTime < clickTime then
		print(("Holy Moly check: %s cast nothing (not ready, out of range, no mana or not known)."):format(label))
	elseif issecretvalue(sentTarget) or issecretvalue(sentSpellID) then
		print(("Holy Moly check: %s cast a spell the game keeps hidden right now."):format(label))
	else
		local rank = C_Spell.GetSpellSubtext(sentSpellID)
		print(("Holy Moly check: %s cast %s%s (spell %d) on %s."):format(label, C_Spell.GetSpellName(sentSpellID) or "?",
			rank and rank ~= "" and (" " .. rank) or "", sentSpellID, sentTarget or "?"))
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
for _, click in ipairs(CLICKS) do
	ns.OnSettingChanged(click.key, function()
		OutOfCombat(ApplySpells)
	end)
end
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
