-- Heal grid: a button for each party or raid member that lights up with a red border when they drop under the
-- threshold (30% by default) and stays faint above it. A left click casts Flash Heal on them, a right click the
-- biggest heal, a middle click Renew, a shift + left click Power Word: Shield; each can be changed in the settings.
-- Works in combat.
--
-- The tank's button gets a blue border and a shield mark, so you keep an eye on them: whoever the game gives the
-- tank role (group finder) or the main tank assignment (raid), or whoever you marked with /holy tank.
--
-- Weakened Soul from your Power Word: Shield shows at the left of the button with its countdown; when it is gone
-- you can shield them again. Like the timers panel, it hands the game's own duration object to a Cooldown frame,
-- so it works in combat without reading secret values.
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
local BUTTON_WIDTH, BUTTON_HEIGHT, GAP = 120, 24, 2
local PARTY_COLUMNS = 2 -- a party: the tank alone on the first row, everyone else two by two under them
local RAID_COLUMNS = 5
local FADED_ALPHA = 0.4
local HANDLE_HEIGHT = 14
local TANK_ICON_SIZE = 12
local WEAKENED_SOUL_FILTER = "HARMFUL|PLAYER" -- the only debuff a Priest puts on friends
local WEAKENED_SOUL_ICON = "Interface\\Icons\\Spell_Holy_AshesToAshes"

local grid = CreateFrame("Frame", "HolyMolyHealGrid", UIParent)
grid:SetSize(PARTY_COLUMNS * BUTTON_WIDTH + (PARTY_COLUMNS - 1) * GAP, HANDLE_HEIGHT + 3 * (BUTTON_HEIGHT + GAP))
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

-- The drag handle is a small Holy Moly icon at the top left; only it takes the mouse, so the empty part of the grid
-- doesn't block clicks on the world.
local handle = CreateFrame("Frame", nil, grid)
handle:SetPoint("TOPLEFT")
handle:SetSize(HANDLE_HEIGHT, HANDLE_HEIGHT)
handle:EnableMouse(true)
handle:RegisterForDrag("LeftButton")
local handleIcon = handle:CreateTexture(nil, "OVERLAY")
handleIcon:SetAllPoints()
handleIcon:SetTexture("Interface\\AddOns\\HolyMoly\\Media\\Icon")
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
		.. "% health. The tank has a blue border and a shield; /holy tank marks your target as tank. Drag here to"
		.. " move the grid with this icon (out of combat).", 1, 1, 1, true)
	GameTooltip:Show()
end)
handle:SetScript("OnLeave", GameTooltip_Hide)

-- Health percent 0-100 for the text: the game evaluates it, the result stays secret and goes straight to text.
local percentCurve = C_CurveUtil.CreateCurve()
percentCurve:SetType(Enum.LuaCurveType.Linear)
percentCurve:AddPoint(0, 0)
percentCurve:AddPoint(1, 100)

local lowCurve = C_CurveUtil.CreateCurve()
lowCurve:SetType(Enum.LuaCurveType.Step)
local fadeCurve = C_CurveUtil.CreateCurve()
fadeCurve:SetType(Enum.LuaCurveType.Step)

local buttons = {}

-- /holy check: for a minute, each heal-button click prints the spell it really cast (see ns.CheckHealButtons).
local CHECK_SECONDS = 60
local checkUntil = 0
local ReportClick

-- Is this unit the tank? The game's role, a raid's main tank, or a /holy tank mark (saved by GUID). Any value the
-- game keeps secret counts as "no".
local function IsTank(unit)
	if UnitGroupRolesAssigned then
		local role = UnitGroupRolesAssigned(unit)
		if not issecretvalue(role) and role == "TANK" then
			return true
		end
	end
	if GetPartyAssignment then
		local mainTank = GetPartyAssignment("MAINTANK", unit)
		if not issecretvalue(mainTank) and mainTank then
			return true
		end
	end
	local guid = UnitGUID(unit)
	return guid ~= nil and not issecretvalue(guid) and HolyMolyDB.tanks[guid] ~= nil
end

local function UpdateTank(button)
	local ok, tank = pcall(IsTank, button.unit)
	button.isTank = ok and tank
	button.tank:SetAlpha(button.isTank and 1 or 0)
end

local function UpdateWeakenedSoul(button)
	local unit, soul = button.unit, button.soul
	local ids = C_UnitAuras.GetUnitAuraInstanceIDs(unit, WEAKENED_SOUL_FILTER)
	local id = ids and ids[1]
	if id then
		soul.cooldown:SetCooldownFromDurationObject(C_UnitAuras.GetAuraDuration(unit, id))
		soul:SetAlpha(1)
		button.name:SetPoint("LEFT", soul, "RIGHT", 2, 0)
	else
		soul.cooldown:Clear()
		soul:SetAlpha(0)
		button.name:SetPoint("LEFT", 3, 0)
	end
end

local function UpdateButton(button)
	local unit = button.unit
	UpdateTank(button)
	-- Its own pcall, so a problem here never stops the health bar.
	if not pcall(UpdateWeakenedSoul, button) then
		button.soul:SetAlpha(0)
	end
	button.name:SetText(UnitName(unit))
	button.health:SetMinMaxValues(0, UnitHealthMax(unit))
	button.health:SetValue(UnitHealth(unit))
	if UnitIsDeadOrGhost(unit) or not UnitIsConnected(unit) then
		button.hp:SetText(UnitIsConnected(unit) and "Dead" or "Offline")
		button.content:SetAlpha(FADED_ALPHA)
		button.low:SetAlpha(0)
	else
		-- "1.2K 85%": secret values may be formatted and joined, and SetText takes the result; if this client
		-- refuses, the text stays empty and the bar still works.
		local ok, text = pcall(function()
			return AbbreviateLargeNumbers(UnitHealth(unit)) .. " "
				.. string.format("%.0f%%", UnitHealthPercent(unit, true, percentCurve))
		end)
		button.hp:SetText(ok and text or "")
		button.content:SetAlpha(UnitHealthPercent(unit, true, fadeCurve))
		button.low:SetAlpha(UnitHealthPercent(unit, true, lowCurve))
	end
end

local reportedError = false
local LayoutParty -- defined with the buttons below

local function UpdateAll()
	handle:SetShown(IsInGroup())
	pcall(LayoutParty)
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
	if self.isTank then
		GameTooltip:AddLine("Tank", 0.35, 0.65, 1)
	end
	for _, click in ipairs(CLICKS) do
		if click.text then
			GameTooltip:AddLine(click.label .. ": " .. click.text, 0.6, 0.8, 1)
		end
	end
	GameTooltip:Show()
end

local function Place(button, column, row, width)
	button:ClearAllPoints()
	button:SetSize(width or BUTTON_WIDTH, BUTTON_HEIGHT)
	button:SetPoint("TOPLEFT", column * (BUTTON_WIDTH + GAP), -row * (BUTTON_HEIGHT + GAP))
end

local function CreateUnitButton(parent, unit, index, columns)
	local button = CreateFrame("Button", nil, parent, "SecureUnitButtonTemplate")
	button.unit = unit
	Place(button, (index - 1) % columns, math.floor((index - 1) / columns))
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
	local hp = health:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	hp:SetPoint("RIGHT", -3, 0)
	hp:SetJustifyH("RIGHT")
	hp:SetWordWrap(false)
	button.hp = hp

	name:SetPoint("LEFT", 3, 0)
	name:SetPoint("RIGHT", hp, "LEFT", -3, 0)
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

	-- The tank mark sits on the button itself, not on the content, so it stays clear while the content is faint.
	-- It shows and hides through its alpha, which is allowed in combat. The blue border is just outside the
	-- button, so the red low-health border inside it still shows.
	local tank = CreateFrame("Frame", nil, button, "BackdropTemplate")
	tank:SetPoint("TOPLEFT", -2, 2)
	tank:SetPoint("BOTTOMRIGHT", 2, -2)
	tank:SetFrameLevel(low:GetFrameLevel() + 1)
	tank:SetBackdrop({ edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 2 })
	tank:SetBackdropBorderColor(0.25, 0.6, 1)
	local shield = tank:CreateTexture(nil, "OVERLAY")
	shield:SetSize(TANK_ICON_SIZE, TANK_ICON_SIZE)
	shield:SetPoint("RIGHT", -2, 0)
	if not (pcall(shield.SetAtlas, shield, "roleicon-tiny-tank") and shield:GetAtlas()) then
		shield:SetTexture("Interface\\Icons\\Ability_Defend")
	end
	tank:SetAlpha(0)
	button.tank = tank
	button.isTank = false

	-- Weakened Soul: an icon with the countdown at the left, on the button so it stays clear when the content is
	-- faint; shown and hidden through its alpha, which is allowed in combat.
	local soul = CreateFrame("Frame", nil, button)
	soul:SetSize(BUTTON_HEIGHT - 4, BUTTON_HEIGHT - 4)
	soul:SetPoint("LEFT", 2, 0)
	soul:SetFrameLevel(tank:GetFrameLevel() + 1)
	local soulTexture = soul:CreateTexture(nil, "ARTWORK")
	soulTexture:SetAllPoints()
	soulTexture:SetTexture(WEAKENED_SOUL_ICON)
	soul.cooldown = CreateFrame("Cooldown", nil, soul, "CooldownFrameTemplate")
	soul.cooldown:SetAllPoints()
	soul.cooldown:SetReverse(true)
	soul.cooldown:SetDrawEdge(false)
	soul.cooldown:SetHideCountdownNumbers(false)
	soul:SetAlpha(0)
	button.soul = soul

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

-- /holy tank: marks your target as the tank, or unmarks them. The mark is kept by GUID until /holy tank clear.
function ns.ToggleTank()
	if not UnitExists("target") or not UnitIsPlayer("target") then
		print("Holy Moly: target the tank first, then type /holy tank.")
		return
	end
	local guid = UnitGUID("target")
	if guid == nil or issecretvalue(guid) then
		print("Holy Moly: the game hides who your target is right now; try again out of combat.")
		return
	end
	local name = UnitName("target")
	name = (name and not issecretvalue(name)) and name or "your target"
	if HolyMolyDB.tanks[guid] then
		HolyMolyDB.tanks[guid] = nil
		print("Holy Moly: " .. name .. " is no longer marked as tank.")
	else
		HolyMolyDB.tanks[guid] = name
		print("Holy Moly: " .. name .. " is marked as tank.")
	end
	QueueUpdate()
end

function ns.ClearTanks()
	wipe(HolyMolyDB.tanks)
	print("Holy Moly: tank marks cleared.")
	QueueUpdate()
end

local partyButtons = {}
local lastLayout

-- The party layout: the tank alone and full width on the first row, everyone else two by two under them; with no
-- tank known, all two by two. Secure buttons can't move in combat, so this runs out of combat (on roster and role
-- changes, and after a fight); a change during a fight waits for its end.
function LayoutParty()
	if InCombatLockdown() or #partyButtons == 0 then
		return
	end
	local present, tank = {}, nil
	for _, button in ipairs(partyButtons) do
		if UnitExists(button.unit) then
			local ok, isTank = pcall(IsTank, button.unit)
			if ok and isTank and not tank then
				tank = button
			else
				present[#present + 1] = button
			end
		end
	end
	local key = (tank and tank.unit or "-")
	for _, button in ipairs(present) do
		key = key .. "," .. button.unit
	end
	if key == lastLayout then
		return
	end
	lastLayout = key
	local row = 0
	if tank then
		Place(tank, 0, 0, PARTY_COLUMNS * BUTTON_WIDTH + (PARTY_COLUMNS - 1) * GAP)
		row = 1
	end
	for i, button in ipairs(present) do
		Place(button, (i - 1) % PARTY_COLUMNS, row + math.floor((i - 1) / PARTY_COLUMNS))
	end
	-- Buttons of people not in the group are hidden by the game; park them after the others.
	local slot = #present
	for _, button in ipairs(partyButtons) do
		if not UnitExists(button.unit) then
			Place(button, slot % PARTY_COLUMNS, row + math.floor(slot / PARTY_COLUMNS))
			slot = slot + 1
		end
	end
end

-- One set of buttons for a party and one for a raid; the game shows the right one, also in combat.
local function Build()
	local party = CreateFrame("Frame", nil, grid)
	party:SetPoint("TOPLEFT", 0, -HANDLE_HEIGHT)
	party:SetSize(1, 1)
	RegisterStateDriver(party, "visibility", "[group:raid] hide; [group:party] show; hide")
	CreateUnitButton(party, "player", 1, PARTY_COLUMNS)
	partyButtons[1] = buttons[#buttons]
	for i = 1, 4 do
		CreateUnitButton(party, "party" .. i, i + 1, PARTY_COLUMNS)
		partyButtons[i + 1] = buttons[#buttons]
	end

	local raid = CreateFrame("Frame", nil, grid)
	raid:SetPoint("TOPLEFT", 0, -HANDLE_HEIGHT)
	raid:SetSize(1, 1)
	RegisterStateDriver(raid, "visibility", "[group:raid] show; hide")
	for i = 1, 40 do
		CreateUnitButton(raid, "raid" .. i, i, RAID_COLUMNS)
	end

	ApplySpells()
	LayoutParty()
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
ns.OnSettingChanged("healGridScale", function()
	OutOfCombat(function()
		grid:SetScale(ns.Get("healGridScale"))
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
frame:RegisterEvent("UNIT_AURA")
-- Role changes; an event this client doesn't have would raise an error, so it is tried.
pcall(frame.RegisterEvent, frame, "PLAYER_ROLES_ASSIGNED")
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
