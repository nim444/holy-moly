-- Heal grid: a button for each party or raid member that lights up with a red border when they drop under the
-- threshold (30% by default) and stays faint above it. Each shows their class icon, their name and how much health
-- they are missing ("-600", nothing at full health); the width is a setting. Six clicks, each changeable in the settings:
-- left Flash Heal, Shift + left Lesser Heal, middle Renew, Shift + middle Power Word: Shield, right Penance and
-- Shift + right the biggest heal. Their tooltip (who it is, what each click casts) shows only while Alt is held.
--
-- Bar styles (a setting): 1. Classic, the flat bar; 2. Gilded, our own textures from tools/make_bars.py (a brushed
-- fill with a sheen, a groove behind it, a thin gold frame, a spark at the fill's edge, and a gold flash when your heal
-- from a button lands); 3. the same with each person's class color. The spark is pinned to the fill texture's right
-- edge, so the game places it from the secret health value; no addon code touches the number.
-- Works in combat.
--
-- The tank's button gets a blue border and a shield mark, so you keep an eye on them: whoever the game gives the
-- tank role (group finder) or the main tank assignment (raid), or whoever you marked with /holy tank.
--
-- Weakened Soul from your Power Word: Shield shows at the left of the button with its countdown; when it is gone
-- you can shield them again. In combat Forever doesn't let addons read debuffs at all (asking is an error), so
-- there the timer starts from your own cast: a heal-button click set to Power Word: Shield, confirmed by the cast
-- going off. Out of combat it is read from the debuff itself.
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
	{ type = "shift-type1", spell = "shift-spell1", key = "healShiftLeft", label = "Shift + left click" },
	{ type = "type3", spell = "spell3", key = "healMiddle", label = "Middle click" },
	{ type = "shift-type3", spell = "shift-spell3", key = "healShiftMiddle", label = "Shift + middle click" },
	{ type = "type2", spell = "spell2", key = "healRight", label = "Right click" },
	{ type = "shift-type2", spell = "shift-spell2", key = "healShiftRight", label = "Shift + right click" },
}
local BUTTON_HEIGHT, GAP = 24, 2
local PARTY_COLUMNS = 2 -- a party: the tank alone on the first row, everyone else two by two under them
local RAID_COLUMNS = 5
local FADED_ALPHA = 0.4
local HANDLE_HEIGHT = 14
local TANK_ICON_SIZE = 12
local CLASS_ICON_SIZE = BUTTON_HEIGHT - 8
-- The class icons' fallback when the client has no "classicon-<class>" atlas: the round icons, cut by CLASS_ICON_TCOORDS.
local CLASS_ICON_CIRCLES = "Interface\\TargetingFrame\\UI-Classes-Circles"
local WEAKENED_SOUL_ICON = "Interface\\Icons\\Spell_Holy_AshesToAshes"

local BARS = "Interface\\AddOns\\HolyMoly\\Media\\Bars\\"
local FRAME_SLICE = 5 -- the gold frame's nine-slice margins, in pixels of Frame.tga
local SPARK_WIDTH = 10
-- Class colors are darkened in the class-color style, so the white name stays readable on a priest's or rogue's bar.
local CLASS_SHADE = 0.68
local STYLES = {
	CLASSIC = {
		fill = "Interface\\TargetingFrame\\UI-StatusBar", color = { 0.1, 0.75, 0.25 },
		missing = { 0.65, 0.08, 0.08, 0.9 }, inset = 1,
	},
	GILDED = {
		fill = BARS .. "Fill", color = { 0.15, 0.78, 0.3 },
		missingTexture = BARS .. "Background", missing = { 0.8, 0.14, 0.14, 1 }, inset = 3, gilded = true,
	},
}
STYLES.CLASS = setmetatable({ classColor = true }, { __index = STYLES.GILDED })

-- A button's width comes from the settings (Options > AddOns > Holy Moly > Heal buttons > Width).
local function ButtonWidth()
	return ns.Get("healGridWidth")
end

local grid = CreateFrame("Frame", "HolyMolyHealGrid", UIParent)
local function SizeGrid()
	grid:SetSize(PARTY_COLUMNS * ButtonWidth() + (PARTY_COLUMNS - 1) * GAP, HANDLE_HEIGHT + 3 * (BUTTON_HEIGHT + GAP))
end
SizeGrid()
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
		.. "% health. The tank has a blue border and a shield; /holy tank marks your target as tank. Hold Alt over a"
		.. " button to see who it is and what each click casts. Drag here to move the grid with this icon (out of"
		.. " combat).", 1, 1, 1, true)
	GameTooltip:Show()
end)
handle:SetScript("OnLeave", GameTooltip_Hide)

-- The missing-health text shows below full health and hides at full health: 1 under 100%, 0 at 100%. The number
-- itself is secret and can't be compared with zero, so the game decides through this curve.
local missingCurve = C_CurveUtil.CreateCurve()
missingCurve:SetType(Enum.LuaCurveType.Step)
missingCurve:AddPoint(0, 1)
missingCurve:AddPoint(1, 0)

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

local WEAKENED_SOUL_SECONDS = 15
local SHIELD = "Power Word: Shield"
local RENEW = "Renew"
local RENEW_SECONDS = 15
local RENEW_ICON = "Interface\\Icons\\Spell_Holy_Renew"

-- Renew works like Weakened Soul: from your own click in combat, read from the buff out of combat.
local function UpdateRenew(button)
	local unit, renew = button.unit, button.renew
	if button.renewUntil and GetTime() < button.renewUntil then
		renew:SetAlpha(1)
		return
	end
	button.renewUntil = nil
	local aura
	if not InCombatLockdown() then
		local ok, data = pcall(C_UnitAuras.GetAuraDataBySpellName, unit, RENEW, "HELPFUL|PLAYER")
		aura = ok and data and data.auraInstanceID
		if aura and issecretvalue(aura) then
			aura = nil
		end
	end
	if aura then
		renew.cooldown:SetCooldownFromDurationObject(C_UnitAuras.GetAuraDuration(unit, aura))
		renew:SetAlpha(1)
	else
		renew.cooldown:Clear()
		renew:SetAlpha(0)
	end
end

local function UpdateWeakenedSoul(button)
	local unit, soul = button.unit, button.soul
	if button.soulUntil and GetTime() < button.soulUntil then
		soul:SetAlpha(1)
		return
	end
	button.soulUntil = nil
	if InCombatLockdown() then
		soul.cooldown:Clear()
		soul:SetAlpha(0)
		return
	end
	local id = ns.WeakenedSoul(unit)
	if id then
		soul.cooldown:SetCooldownFromDurationObject(C_UnitAuras.GetAuraDuration(unit, id))
		soul:SetAlpha(1)
	else
		soul.cooldown:Clear()
		soul:SetAlpha(0)
	end
end

-- The class icon: the "classicon-<class>" atlas, or the round class icons where the client lacks it. A class the
-- game keeps secret leaves the icon as it was; it is only looked up again when the class changes.
local ApplyStyle, ColorFill -- defined with the buttons below

local function UpdateClass(button)
	local _, classFile = UnitClass(button.unit)
	if classFile == nil or issecretvalue(classFile) or classFile == button.classFile then
		return
	end
	button.classFile = classFile
	local color = RAID_CLASS_COLORS and RAID_CLASS_COLORS[classFile]
	button.classColor = color and { color.r * CLASS_SHADE, color.g * CLASS_SHADE, color.b * CLASS_SHADE } or nil
	ColorFill(button)
	local icon = button.class
	if pcall(icon.SetAtlas, icon, "classicon-" .. classFile:lower()) and icon:GetAtlas() then
		icon:SetAlpha(1)
	elseif CLASS_ICON_TCOORDS and CLASS_ICON_TCOORDS[classFile] then
		icon:SetTexture(CLASS_ICON_CIRCLES)
		icon:SetTexCoord(unpack(CLASS_ICON_TCOORDS[classFile]))
		icon:SetAlpha(1)
	else
		icon:SetAlpha(0)
	end
end

local function UpdateButton(button)
	local unit = button.unit
	UpdateTank(button)
	-- Its own pcall, so a problem here never stops the health bar.
	if not pcall(UpdateWeakenedSoul, button) then
		button.soul:SetAlpha(0)
	end
	if not pcall(UpdateRenew, button) then
		button.renew:SetAlpha(0)
	end
	pcall(UpdateClass, button)
	button.name:SetText(UnitName(unit))
	button.health:SetMinMaxValues(0, UnitHealthMax(unit))
	button.health:SetValue(UnitHealth(unit))
	if UnitIsDeadOrGhost(unit) or not UnitIsConnected(unit) then
		button.hp:SetText(UnitIsConnected(unit) and "Dead" or "Offline")
		button.hp:SetTextColor(1, 1, 1)
		button.hp:SetAlpha(1)
		button.spark:SetAlpha(0)
		button.content:SetAlpha(FADED_ALPHA)
		button.low:SetAlpha(0)
	else
		-- "-600": the health they are missing, what a heal has to fill. Secret values may be formatted and joined,
		-- and SetText takes the result; if this client refuses, the text stays empty and the bar still works. At
		-- full health the text hides through missingCurve.
		local ok, text = pcall(function()
			return "-" .. AbbreviateLargeNumbers(UnitHealthMissing(unit))
		end)
		button.hp:SetText(ok and text or "")
		button.hp:SetTextColor(1, 0.45, 0.45)
		button.hp:SetAlpha(UnitHealthPercent(unit, true, missingCurve))
		button.spark:SetAlpha(UnitHealthPercent(unit, true, missingCurve))
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

-- A button's tooltip shows only while Alt is held, so it doesn't cover the grid while you heal: on entering with Alt
-- down, or when Alt goes down while the mouse is over a button (and it goes away when Alt is let go).
local hovered
local function OnButtonEnter(self)
	hovered = self
	if IsAltKeyDown() then
		ShowTooltip(self)
	end
end
local function OnButtonLeave(self)
	if hovered == self then
		hovered = nil
	end
	if GameTooltip:IsOwned(self) then
		GameTooltip:Hide()
	end
end
local altFrame = CreateFrame("Frame")
altFrame:RegisterEvent("MODIFIER_STATE_CHANGED")
altFrame:SetScript("OnEvent", function(_, _, key)
	if not hovered or (key ~= "LALT" and key ~= "RALT") then
		return
	end
	if IsAltKeyDown() then
		ShowTooltip(hovered)
	elseif GameTooltip:IsOwned(hovered) then
		GameTooltip:Hide()
	end
end)

local function Place(button, column, row, width)
	button:ClearAllPoints()
	button:SetSize(width or ButtonWidth(), BUTTON_HEIGHT)
	button:SetPoint("TOPLEFT", column * (ButtonWidth() + GAP), -row * (BUTTON_HEIGHT + GAP))
end

local NoteClick -- defined with the click settings below

-- The bar style's look on one button: fill texture and color, the missing-health layer, the inset that keeps the fill
-- inside the gold frame, and the gilded layers on or off. Plain textures only, so this also works in combat.
function ColorFill(button)
	local style = button.style
	if not style then
		return
	end
	local color = style.classColor and button.classColor or style.color
	button.health:SetStatusBarColor(color[1], color[2], color[3])
end

function ApplyStyle(button)
	local style = STYLES[ns.Get("healGridStyle")] or STYLES.GILDED
	button.style = style
	local health = button.health
	health:ClearAllPoints()
	health:SetPoint("TOPLEFT", style.inset, -style.inset)
	health:SetPoint("BOTTOMRIGHT", -style.inset, style.inset)
	health:SetStatusBarTexture(style.fill)
	ColorFill(button)
	local missing = button.missing
	if style.missingTexture then
		missing:SetTexture(style.missingTexture)
		missing:SetVertexColor(unpack(style.missing))
	else
		missing:SetVertexColor(1, 1, 1, 1)
		missing:SetColorTexture(unpack(style.missing))
	end
	-- Pinned to the fill texture, whose right edge the game moves with the health.
	local fill = health:GetStatusBarTexture()
	button.gloss:ClearAllPoints()
	button.gloss:SetPoint("TOPLEFT", fill)
	button.gloss:SetPoint("BOTTOMRIGHT", fill)
	button.spark:ClearAllPoints()
	button.spark:SetPoint("CENTER", fill, "RIGHT")
	button.spark:SetHeight(BUTTON_HEIGHT - 2 * style.inset + 6)
	button.gloss:SetShown(style.gilded == true)
	button.spark:SetShown(style.gilded == true)
	button.gild:SetShown(style.gilded == true)
end

local function CreateUnitButton(parent, unit, index, columns)
	local button = CreateFrame("Button", nil, parent, "SecureUnitButtonTemplate")
	button.unit = unit
	-- Its spot in the grid, kept for a width change (a party's buttons are moved again by LayoutParty).
	button.column, button.row = (index - 1) % columns, math.floor((index - 1) / columns)
	Place(button, button.column, button.row)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp", "MiddleButtonUp")
	button:SetAttribute("unit", unit)

	-- Everything you see sits on a plain child frame, whose alpha can change in combat.
	local content = CreateFrame("Frame", nil, button)
	content:SetAllPoints()
	button.content = content
	local background = content:CreateTexture(nil, "BACKGROUND")
	background:SetAllPoints()
	background:SetColorTexture(0, 0, 0, 0.75)

	-- The health bar; its texture, color and inset come from the bar style (ApplyStyle).
	local health = CreateFrame("StatusBar", nil, content)
	button.health = health
	-- The missing health shows red behind the fill.
	local missing = health:CreateTexture(nil, "BACKGROUND")
	missing:SetAllPoints()
	button.missing = missing
	-- Gilded styles: a sheen over the fill and a spark at its edge, both added light (ADD), both pinned to the fill
	-- texture in ApplyStyle.
	local gloss = health:CreateTexture(nil, "OVERLAY")
	gloss:SetTexture(BARS .. "Gloss")
	gloss:SetBlendMode("ADD")
	button.gloss = gloss
	local spark = health:CreateTexture(nil, "OVERLAY", nil, 2)
	spark:SetTexture(BARS .. "Spark")
	spark:SetBlendMode("ADD")
	spark:SetSize(SPARK_WIDTH, BUTTON_HEIGHT)
	spark:SetAlpha(0)
	button.spark = spark
	-- Gilded styles: the thin gold frame over the bar, a nine-slice so its corners keep their shape at any width; a
	-- plain gold edge where the client can't slice textures.
	local gild = CreateFrame("Frame", nil, content, "BackdropTemplate")
	gild:SetAllPoints()
	gild:SetFrameLevel(health:GetFrameLevel() + 1)
	local gildTexture = gild:CreateTexture(nil, "OVERLAY")
	gildTexture:SetAllPoints()
	gildTexture:SetTexture(BARS .. "Frame")
	if not pcall(gildTexture.SetTextureSliceMargins, gildTexture, FRAME_SLICE, FRAME_SLICE, FRAME_SLICE, FRAME_SLICE) then
		gildTexture:Hide()
		gild:SetBackdrop({ edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 2 })
		gild:SetBackdropBorderColor(0.83, 0.67, 0.31)
	end
	button.gild = gild

	-- The text sits on its own frame on the button, not on the content, so the name and health stay readable while
	-- the bar is faint (healthy people) or someone is dead.
	local text = CreateFrame("Frame", nil, button)
	text:SetAllPoints()
	text:SetFrameLevel(health:GetFrameLevel() + 4)
	-- The gold flash when your heal from this button lands (gilded styles): added light over the bar, on the text frame
	-- so a faint (healthy) bar doesn't dim it, under the name.
	local flash = text:CreateTexture(nil, "BACKGROUND")
	flash:SetPoint("TOPLEFT", health)
	flash:SetPoint("BOTTOMRIGHT", health)
	flash:SetColorTexture(1, 0.82, 0.35)
	flash:SetBlendMode("ADD")
	flash:SetAlpha(0)
	local flashAnimation = flash:CreateAnimationGroup()
	local rise = flashAnimation:CreateAnimation("Alpha")
	rise:SetFromAlpha(0)
	rise:SetToAlpha(0.55)
	rise:SetDuration(0.1)
	rise:SetOrder(1)
	local fall = flashAnimation:CreateAnimation("Alpha")
	fall:SetFromAlpha(0.55)
	fall:SetToAlpha(0)
	fall:SetDuration(0.45)
	fall:SetOrder(2)
	button.flash = flashAnimation
	local name = text:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	local hp = text:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	for _, fontString in ipairs({ name, hp }) do
		fontString:SetShadowColor(0, 0, 0, 1)
		fontString:SetShadowOffset(1, -1)
	end
	hp:SetPoint("RIGHT", -3, 0)
	hp:SetJustifyH("RIGHT")
	hp:SetWordWrap(false)
	button.hp = hp

	-- The class icon at the left, on the text frame so it stays clear while the bar is faint; the name follows it.
	local class = text:CreateTexture(nil, "OVERLAY")
	class:SetSize(CLASS_ICON_SIZE, CLASS_ICON_SIZE)
	class:SetPoint("LEFT", 3, 0)
	class:SetAlpha(0)
	button.class = class

	name:SetPoint("LEFT", class, "RIGHT", 3, 0)
	name:SetPoint("RIGHT", hp, "LEFT", -3, 0)
	name:SetJustifyH("LEFT")
	name:SetWordWrap(false)
	button.name = name

	local low = CreateFrame("Frame", nil, content, "BackdropTemplate")
	low:SetAllPoints()
	low:SetFrameLevel(health:GetFrameLevel() + 2)
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
	-- On top of everything, the text included; the name doesn't move for it.
	soul:SetFrameLevel(button:GetFrameLevel() + 10)
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

	-- Renew: the same kind of icon, right of Weakened Soul.
	local renew = CreateFrame("Frame", nil, button)
	renew:SetSize(BUTTON_HEIGHT - 4, BUTTON_HEIGHT - 4)
	renew:SetPoint("LEFT", soul, "RIGHT", 2, 0)
	renew:SetFrameLevel(button:GetFrameLevel() + 10)
	local renewTexture = renew:CreateTexture(nil, "ARTWORK")
	renewTexture:SetAllPoints()
	renewTexture:SetTexture(RENEW_ICON)
	renew.cooldown = CreateFrame("Cooldown", nil, renew, "CooldownFrameTemplate")
	renew.cooldown:SetAllPoints()
	renew.cooldown:SetReverse(true)
	renew.cooldown:SetDrawEdge(false)
	renew.cooldown:SetHideCountdownNumbers(false)
	renew:SetAlpha(0)
	button.renew = renew

	button:HookScript("OnEnter", OnButtonEnter)
	button:HookScript("OnLeave", OnButtonLeave)
	button:HookScript("OnShow", QueueUpdate)
	button:HookScript("PostClick", function(self, mouseButton)
		NoteClick(self, mouseButton, IsShiftKeyDown())
		if GetTime() < checkUntil then
			local clickTime, shift = GetTime(), IsShiftKeyDown()
			C_Timer.After(0.3, function()
				ReportClick(mouseButton, shift, clickTime)
			end)
		end
	end)
	ApplyStyle(button)
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

-- A click on a heal button that casts a spell waits here until the cast goes off (UNIT_SPELLCAST_SUCCEEDED): Power
-- Word: Shield and Renew then start their timers, and a gilded button flashes gold. Instants wait 1.5 s, spells with a
-- cast time up to 4 s; an interrupted cast drops it.
local pendingCast
local INSTANT_WAIT, CAST_WAIT = 1.5, 4
local CLICK_KEYS = { LeftButton = "healLeft", RightButton = "healRight", MiddleButton = "healMiddle" }
local SHIFT_CLICK_KEYS = { LeftButton = "healShiftLeft", RightButton = "healShiftRight", MiddleButton = "healShiftMiddle" }

NoteClick = function(button, mouseButton, shift)
	local key = (shift and SHIFT_CLICK_KEYS or CLICK_KEYS)[mouseButton]
	for _, click in ipairs(CLICKS) do
		if click.key == key then
			if click.text and click.text ~= "Target" then
				local instant = click.text == SHIELD or click.text == RENEW
				pendingCast = { button = button, time = GetTime(), spell = click.text,
					wait = instant and INSTANT_WAIT or CAST_WAIT }
			end
			return
		end
	end
end

local function StartWeakenedSoul(button)
	button.soulUntil = GetTime() + WEAKENED_SOUL_SECONDS
	button.soul.cooldown:SetCooldown(GetTime(), WEAKENED_SOUL_SECONDS)
	button.soul:SetAlpha(1)
	C_Timer.After(WEAKENED_SOUL_SECONDS + 0.1, QueueUpdate)
end

local function StartRenew(button)
	button.renewUntil = GetTime() + RENEW_SECONDS
	button.renew.cooldown:SetCooldown(GetTime(), RENEW_SECONDS)
	button.renew:SetAlpha(1)
	C_Timer.After(RENEW_SECONDS + 0.1, QueueUpdate)
end

local castFrame = CreateFrame("Frame")
castFrame:RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED", "player")
castFrame:RegisterUnitEvent("UNIT_SPELLCAST_INTERRUPTED", "player")
castFrame:SetScript("OnEvent", function(_, event, _, _, spellID)
	local pending = pendingCast
	if event == "UNIT_SPELLCAST_INTERRUPTED" then
		pendingCast = nil
		return
	end
	if not pending or GetTime() - pending.time > pending.wait then
		return
	end
	pendingCast = nil
	-- The spell may be secret in combat; then the click right before it is taken at its word.
	if spellID ~= nil and not issecretvalue(spellID) then
		local name = C_Spell.GetSpellName(spellID)
		if name and not issecretvalue(name) and name ~= pending.spell then
			return
		end
	end
	if pending.spell == RENEW then
		StartRenew(pending.button)
	elseif pending.spell == SHIELD then
		StartWeakenedSoul(pending.button)
	end
	local button = pending.button
	if button.style and button.style.gilded then
		button.flash:Stop()
		button.flash:Play()
	end
end)

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
		Place(tank, 0, 0, PARTY_COLUMNS * ButtonWidth() + (PARTY_COLUMNS - 1) * GAP)
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
-- A new width moves every button to its spot at that width; secure buttons can't be resized in combat, so a change
-- made during a fight waits for its end.
local function Relayout()
	SizeGrid()
	for _, button in ipairs(buttons) do
		Place(button, button.column, button.row)
	end
	lastLayout = nil
	LayoutParty()
end
ns.OnSettingChanged("healGridWidth", function()
	OutOfCombat(Relayout)
end)
ns.OnSettingChanged("healGridStyle", function()
	for _, button in ipairs(buttons) do
		ApplyStyle(button)
	end
	QueueUpdate()
end)

-- Shows or hides the heal buttons (Shift-click on the minimap button, /holy heals): the same as the Heal buttons
-- checkbox in the settings. Secure buttons can't be hidden in combat, so then it happens when the fight ends.
function ns.ToggleHealGrid()
	local shown = not ns.Get("healGrid")
	ns.Set("healGrid", shown)
	local when = InCombatLockdown() and " when this fight ends" or ""
	print(("Holy Moly: heal buttons %s%s."):format(shown and "shown" or "hidden", when))
end

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
