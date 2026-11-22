-- Heal grid: a button for each party or raid member that lights up with a red border when they drop under the
-- threshold (30% by default) and stays faint above it. Each shows their class icon, their name and how much health
-- they are missing ("-600", nothing at full health); the width is a setting. Eight clicks, each changeable in the settings:
-- left Flash Heal, Shift + left Lesser Heal, middle Renew, Shift + middle Power Word: Shield, right Penance,
-- Shift + right the biggest heal, Alt + left Dispel Magic and Alt + right Abolish Disease. Their tooltip (who it is,
-- what each click casts) shows only while Ctrl is held.
--
-- Debuffs you can dispel: a glow around the button in the debuff type's color (Magic blue, Disease brown, Curse
-- purple, Poison green) and up to three of their icons with a countdown sweep, left of the missing-health text; see
-- "Debuffs you can dispel" below for how the game draws them in combat.
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
local STAND_INS = { ["Flash Heal"] = "Lesser Heal", ["Abolish Disease"] = "Cure Disease" }
-- The clicks by the secure attributes they set ("shift-" or "alt-" makes an attribute apply only with that key held),
-- with the setting that picks what each does. press is the modifier prefix and mouse button, as Press() reads a click.
local CLICKS = {
	{ type = "type1", spell = "spell1", key = "healLeft", label = "Left click", press = "LeftButton" },
	{ type = "shift-type1", spell = "shift-spell1", key = "healShiftLeft", label = "Shift + left click",
		press = "shift-LeftButton" },
	{ type = "type3", spell = "spell3", key = "healMiddle", label = "Middle click", press = "MiddleButton" },
	{ type = "shift-type3", spell = "shift-spell3", key = "healShiftMiddle", label = "Shift + middle click",
		press = "shift-MiddleButton" },
	{ type = "type2", spell = "spell2", key = "healRight", label = "Right click", press = "RightButton" },
	{ type = "shift-type2", spell = "shift-spell2", key = "healShiftRight", label = "Shift + right click",
		press = "shift-RightButton" },
	{ type = "alt-type1", spell = "alt-spell1", key = "healAltLeft", label = "Alt + left click", press = "alt-LeftButton" },
	{ type = "alt-type2", spell = "alt-spell2", key = "healAltRight", label = "Alt + right click",
		press = "alt-RightButton" },
}

-- A click as the secure button reads it: the held modifiers in the game's order (alt, ctrl, shift) and the mouse
-- button. A combination no click is set for (Ctrl, or Alt and Shift together) casts nothing.
local function Press(mouseButton)
	return (IsAltKeyDown() and "alt-" or "") .. (IsControlKeyDown() and "ctrl-" or "")
		.. (IsShiftKeyDown() and "shift-" or "") .. tostring(mouseButton)
end

local function ClickFor(press)
	for _, click in ipairs(CLICKS) do
		if click.press == press then
			return click
		end
	end
end
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
-- Debuffs you can dispel: up to DEBUFF_ICONS icons left of the missing-health text (DEBUFF_TEXT_ROOM keeps "-1.2K"
-- clear), and a glow DEBUFF_GLOW_OUTSET pixels outside the button (Glow.tga's bright line sits that far in).
local DEBUFF_ICON_SIZE = BUTTON_HEIGHT - 6
local DEBUFF_ICONS = 3
local DEBUFF_TEXT_ROOM = 34
local DEBUFF_GLOW_OUTSET = 4
local GLOW_SLICE = 8 -- Glow.tga's nine-slice margins
-- Harmful auras the player can remove (RAID on a harmful filter), and only those with a dispel type, for the glow.
local DISPEL_FILTER = "HARMFUL|RAID"
local DISPEL_TYPES = { includeDispelTypes = { Magic = true, Curse = true, Disease = true, Poison = true } }

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
		.. "% health. The tank has a blue border and a shield; /holy tank marks your target as tank. A glow in the"
		.. " debuff's color and its icon show a debuff you can dispel: Alt + left click casts Dispel Magic, Alt + right"
		.. " click Abolish Disease. Hold Ctrl over a button to see who it is and what each click casts. Drag here to"
		.. " move the grid with this icon (out of combat).", 1, 1, 1, true)
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

local function SetClass(button, classFile)
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

local function UpdateClass(button)
	local _, classFile = UnitClass(button.unit)
	if classFile == nil or issecretvalue(classFile) or classFile == button.classFile then
		return
	end
	SetClass(button, classFile)
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

-- A button's tooltip shows only while Ctrl is held, so it doesn't cover the grid while you heal: on entering with Ctrl
-- down, or when Ctrl goes down while the mouse is over a button (and it goes away when Ctrl is let go). Not Alt or
-- Shift, which pick the click's spell; a click with Ctrl held casts nothing.
local hovered
local function OnButtonEnter(self)
	hovered = self
	if IsControlKeyDown() then
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
local ctrlFrame = CreateFrame("Frame")
ctrlFrame:RegisterEvent("MODIFIER_STATE_CHANGED")
ctrlFrame:SetScript("OnEvent", function(_, _, key)
	if not hovered or (key ~= "LCTRL" and key ~= "RCTRL") then
		return
	end
	if IsControlKeyDown() then
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

-- Everything you see on a heal button, for the real (secure) buttons and the preview's plain ones alike.
local function BuildLook(button)
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
end

-- Debuffs you can dispel. Forever hides auras from addon code in combat, so no addon code reads them: each heal
-- button gets two of the game's own aura containers (CustomAuraContainerTemplate), pointed once at the button's unit
-- with the DISPEL_FILTER. The game fills them in, also in combat: the glow's single slot takes the first such debuff
-- and the game colors the glow texture by its type; the icon group shows up to DEBUFF_ICONS of them with icon,
-- countdown sweep, stack count and a border in the type's color. X-Perl draws its debuff highlight and aura rows the
-- same way. The containers' buttons are set up once as the game makes them (initializeFrame), before it locks them
-- away from addon code; they take no clicks, so a click on an icon or the glow still casts the heal button's spell.
-- A container's size is secret once it shows auras, so nothing is anchored to one.

-- The glow's look on a texture (also the preview's): white Glow.tga, nine-sliced, added light.
local function SetGlowLook(texture)
	texture:SetTexture(BARS .. "Glow")
	pcall(texture.SetTextureSliceMargins, texture, GLOW_SLICE, GLOW_SLICE, GLOW_SLICE, GLOW_SLICE)
	texture:SetBlendMode("ADD")
	texture:SetAllPoints()
end

-- The frame the glow sits on: the button's size plus DEBUFF_GLOW_OUTSET on each side, above the bar and its borders.
local function GlowHolder(button)
	local holder = CreateFrame("Frame", nil, button)
	holder:SetPoint("TOPLEFT", -DEBUFF_GLOW_OUTSET, DEBUFF_GLOW_OUTSET)
	holder:SetPoint("BOTTOMRIGHT", DEBUFF_GLOW_OUTSET, -DEBUFF_GLOW_OUTSET)
	holder:SetFrameLevel(button:GetFrameLevel() + 7)
	return holder
end

-- Where the icons start: right of the name, left of the missing-health text, growing to the left.
local function PlaceDebuffIcons(frame, button)
	frame:SetPoint("TOPRIGHT", button, "TOPRIGHT", -DEBUFF_TEXT_ROOM, -(BUTTON_HEIGHT - DEBUFF_ICON_SIZE) / 2)
	frame:SetFrameLevel(button:GetFrameLevel() + 8)
end

local function InitGlowSlot(slot, holder)
	slot:SetUsingParentLevel(true)
	slot:EnableMouse(false)
	slot:SetAllPoints(holder)
	local glow = slot:CreateTexture(nil, "OVERLAY")
	SetGlowLook(glow)
	slot:AddDispelTypeTexture(glow, {
		showWhenHarmful = true,
		style = Enum.CustomAuraButtonDispelTypeTextureStyle.PreserveAsset,
	})
end

local function InitDebuffIcon(icon)
	icon:EnableMouse(false)
	icon:SetSize(DEBUFF_ICON_SIZE, DEBUFF_ICON_SIZE)
	icon.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
	icon.TextHolder:SetFrameLevel(icon.CooldownHolder.Cooldown:GetFrameLevel() + 1)
	icon:SetIcon(icon.Icon)
	icon:SetApplicationCount(icon.TextHolder.Count)
	icon:SetDurationCooldown(icon.CooldownHolder.Cooldown)
	icon:AddDispelTypeTexture(icon.Border, {
		showWhenHarmful = true,
		showWithoutDispelType = true,
		style = Enum.CustomAuraButtonDispelTypeTextureStyle.PreserveAsset,
	})
end

local function BuildDebuffs(button)
	local holder = GlowHolder(button)
	local glow = CreateFrame("AuraContainer", nil, holder, "CustomAuraContainerTemplate")
	glow:SetUsingParentLevel(true)
	glow:SetAllPoints()
	glow:AddAuraSlot("debuff", "HARMFUL", {
		candidateFilters = DISPEL_TYPES,
		initializeFrame = function(slot)
			InitGlowSlot(slot, holder)
		end,
	})
	glow:SetAuraSlotFilterString("debuff", DISPEL_FILTER)

	local icons = CreateFrame("AuraContainer", nil, button,
		"CustomAuraContainerTemplate, DisableUntrustedLayoutScriptsTemplate")
	PlaceDebuffIcons(icons, button)
	icons:AddAuraGroup("debuffs", "HARMFUL", {
		templateNames = { "HolyMolyDebuffIconTemplate" },
		initializeFrame = InitDebuffIcon,
		layout = { elementSpacing = 2, lineSpacing = 1, layoutIndex = 1 },
	})
	icons:SetAuraGroupFilterString("debuffs", DISPEL_FILTER)
	icons:SetAuraGroupMaxFrameCount("debuffs", DEBUFF_ICONS)
	icons:SetFlowLayoutAxis(AnchorUtil.FlowLayoutAxis.Horizontal)
	icons:SetFlowLayoutAnchorPoint("TOPRIGHT")
	icons:SetFlowLayoutGrowthDirection(AnchorUtil.FlowDirection.Left, AnchorUtil.FlowDirection.Down)

	button.debuffContainers = { glow, icons }
	for _, container in ipairs(button.debuffContainers) do
		container:SetUnit(button.unit)
		container:SetEnabled(ns.Get("healGridDebuffs") and true or false)
	end
end

-- Turns the debuff display on or off (the setting) and refreshes it; a unit token may now be someone else (a roster
-- change), which the containers are told by refreshing. Out of combat only.
local function RefreshDebuffs()
	local on = ns.Get("healGridDebuffs") and true or false
	for _, button in ipairs(buttons) do
		for _, container in ipairs(button.debuffContainers or {}) do
			pcall(container.SetEnabled, container, on)
			pcall(container.UpdateAllAuras, container)
		end
	end
end

local debuffError = false
local function CreateUnitButton(parent, unit, index, columns)
	local button = CreateFrame("Button", nil, parent, "SecureUnitButtonTemplate")
	button.unit = unit
	-- Its spot in the grid, kept for a width change (a party's buttons are moved again by LayoutParty).
	button.column, button.row = (index - 1) % columns, math.floor((index - 1) / columns)
	Place(button, button.column, button.row)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp", "MiddleButtonUp")
	button:SetAttribute("unit", unit)

	BuildLook(button)
	-- Its own pcall, so a client without aura containers still gets working heal buttons.
	local ok, err = pcall(BuildDebuffs, button)
	if not ok and not debuffError then
		debuffError = true
		print("Holy Moly: the heal buttons can't show debuffs on this client: " .. tostring(err))
	end

	button:HookScript("OnEnter", OnButtonEnter)
	button:HookScript("OnLeave", OnButtonLeave)
	button:HookScript("OnShow", QueueUpdate)
	button:HookScript("PostClick", function(self, mouseButton)
		local press = Press(mouseButton)
		NoteClick(self, press)
		if GetTime() < checkUntil then
			local clickTime = GetTime()
			C_Timer.After(0.3, function()
				ReportClick(press, clickTime)
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
-- Instants besides the two timed ones; their cast goes off at once too.
local INSTANTS = { ["Dispel Magic"] = true, ["Cure Disease"] = true, ["Abolish Disease"] = true }

NoteClick = function(button, press)
	local click = ClickFor(press)
	if click and click.text and click.text ~= "Target" then
		local instant = click.text == SHIELD or click.text == RENEW or INSTANTS[click.text]
		pendingCast = { button = button, time = GetTime(), spell = click.text,
			wait = instant and INSTANT_WAIT or CAST_WAIT }
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

function ReportClick(press, clickTime)
	local click = ClickFor(press)
	if not click then
		print(("Holy Moly check: %s is not a heal-button click; it casts nothing."):format(press))
		return
	end
	local label = click.label
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

-- The preview: a sample party drawn with the current bar style, width, size and low-health threshold, for choosing a
-- style and for screenshots. Made of plain frames with made-up people and plain numbers, so it never touches the real
-- group. The settings' Preview button shows it beside the settings until they close; /holy preview shows it where the
-- heal buttons sit until /holy preview again. Its icon drags it (not saved).
local SAMPLE = {
	{ name = "Ironhide", class = "WARRIOR", health = 0.58, max = 5200, tank = true, soul = 9, renew = 12 },
	{ name = "Lumina", class = "PRIEST", health = 1, max = 3100 },
	{ name = "Quickstep", class = "ROGUE", health = 0.22, max = 2800, renew = 6,
		debuffs = { { "Magic", "Interface\\Icons\\Spell_Frost_FrostNova" } } },
	{ name = "Emberly", class = "MAGE", health = 0.81, max = 2600,
		debuffs = { { "Disease", "Interface\\Icons\\Spell_Shadow_CallofBone" },
			{ "Magic", "Interface\\Icons\\Spell_Shadow_ShadowWordPain" } } },
	{ name = "Thornwood", class = "DRUID", health = 0, max = 3300 },
}
-- The preview draws the debuff colors itself; the game's own table where it has one.
local PREVIEW_DEBUFF_COLORS = {
	Magic = { 0.2, 0.6, 1 }, Curse = { 0.6, 0, 1 }, Disease = { 0.6, 0.4, 0 }, Poison = { 0, 0.6, 0 },
}
local function DebuffColor(dispelType)
	local color = DebuffTypeColor and DebuffTypeColor[dispelType]
	if color then
		return color.r, color.g, color.b
	end
	return unpack(PREVIEW_DEBUFF_COLORS[dispelType])
end

-- The preview's copy of the debuff glow and icons: plain textures colored here, since the sample people have no
-- real auras. Made the first time a sample button needs them.
local function PreviewDebuffs(button, debuffs)
	if not button.previewGlow then
		local holder = GlowHolder(button)
		button.previewGlow = holder:CreateTexture(nil, "OVERLAY")
		SetGlowLook(button.previewGlow)
		local row = CreateFrame("Frame", nil, button)
		PlaceDebuffIcons(row, button)
		row:SetSize(DEBUFF_ICONS * (DEBUFF_ICON_SIZE + 2), DEBUFF_ICON_SIZE)
		button.previewIcons = {}
		for i = 1, DEBUFF_ICONS do
			local icon = row:CreateTexture(nil, "ARTWORK")
			icon:SetSize(DEBUFF_ICON_SIZE, DEBUFF_ICON_SIZE)
			icon:SetPoint("TOPRIGHT", -(i - 1) * (DEBUFF_ICON_SIZE + 2), 0)
			icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
			local border = row:CreateTexture(nil, "OVERLAY")
			border:SetTexture("Interface\\Buttons\\UI-Debuff-Overlays")
			border:SetTexCoord(0.296875, 0.5703125, 0, 0.515625)
			border:SetPoint("TOPLEFT", icon, -1, 1)
			border:SetPoint("BOTTOMRIGHT", icon, 1, -1)
			button.previewIcons[i] = { icon = icon, border = border }
		end
	end
	debuffs = ns.Get("healGridDebuffs") and debuffs or {}
	button.previewGlow:SetShown(debuffs[1] ~= nil)
	if debuffs[1] then
		button.previewGlow:SetVertexColor(DebuffColor(debuffs[1][1]))
	end
	for i, slot in ipairs(button.previewIcons) do
		local debuff = debuffs[i]
		slot.icon:SetShown(debuff ~= nil)
		slot.border:SetShown(debuff ~= nil)
		if debuff then
			slot.icon:SetTexture(debuff[2])
			slot.border:SetVertexColor(DebuffColor(debuff[1]))
		end
	end
end
local FLASH_EVERY = 2.5 -- seconds between the preview's gold flashes on the low one

local preview = CreateFrame("Frame", "HolyMolyHealGridPreview", UIParent)
preview:SetFrameStrata("FULLSCREEN_DIALOG")
preview:SetClampedToScreen(true)
preview:SetMovable(true)
preview:Hide()
local previewButtons = {}
local previewFromSettings = false
-- The sample buttons sit under the drag icon, like the real ones.
local previewParty = CreateFrame("Frame", nil, preview)
previewParty:SetPoint("TOPLEFT", 0, -HANDLE_HEIGHT)
previewParty:SetSize(1, 1)

local previewHandle = CreateFrame("Frame", nil, preview)
previewHandle:SetPoint("TOPLEFT")
previewHandle:SetSize(HANDLE_HEIGHT, HANDLE_HEIGHT)
previewHandle:EnableMouse(true)
previewHandle:RegisterForDrag("LeftButton")
local previewIcon = previewHandle:CreateTexture(nil, "OVERLAY")
previewIcon:SetAllPoints()
previewIcon:SetTexture("Interface\\AddOns\\HolyMoly\\Media\\Icon")
previewHandle:SetScript("OnDragStart", function()
	preview:StartMoving()
end)
previewHandle:SetScript("OnDragStop", function()
	preview:StopMovingOrSizing()
end)

local function FillPreviewButton(button, sample)
	ApplyStyle(button)
	SetClass(button, sample.class)
	button.name:SetText(sample.name)
	local current = sample.max * sample.health
	button.health:SetMinMaxValues(0, sample.max)
	button.health:SetValue(current)
	local low = sample.health > 0 and sample.health * 100 < ns.Get("healGridPercent")
	if sample.health == 0 then
		button.hp:SetText("Dead")
		button.hp:SetTextColor(1, 1, 1)
		button.hp:SetAlpha(1)
		button.spark:SetAlpha(0)
		button.content:SetAlpha(FADED_ALPHA)
	else
		local missing = sample.max - current
		button.hp:SetText("-" .. AbbreviateLargeNumbers(math.floor(missing + 0.5)))
		button.hp:SetTextColor(1, 0.45, 0.45)
		button.hp:SetAlpha(missing > 0 and 1 or 0)
		button.spark:SetAlpha(missing > 0 and 1 or 0)
		button.content:SetAlpha(low and 1 or FADED_ALPHA)
	end
	button.low:SetAlpha(low and 1 or 0)
	button.tank:SetAlpha(sample.tank and 1 or 0)
	for _, timer in ipairs({ { button.soul, sample.soul }, { button.renew, sample.renew } }) do
		local icon, left = timer[1], timer[2]
		if left then
			icon.cooldown:SetCooldown(GetTime() - (15 - left), 15)
			icon:SetAlpha(1)
		else
			icon.cooldown:Clear()
			icon:SetAlpha(0)
		end
	end
	PreviewDebuffs(button, sample.debuffs or {})
end

-- Lays the sample out like a party: the tank alone on the first row, everyone else two by two under them.
local function LayoutPreview()
	preview:SetScale(ns.Get("healGridScale"))
	preview:SetSize(PARTY_COLUMNS * ButtonWidth() + (PARTY_COLUMNS - 1) * GAP, HANDLE_HEIGHT + 3 * (BUTTON_HEIGHT + GAP))
	for i, sample in ipairs(SAMPLE) do
		local button = previewButtons[i]
		if not button then
			button = CreateFrame("Frame", nil, previewParty)
			BuildLook(button)
			previewButtons[i] = button
		end
		if sample.tank then
			Place(button, 0, 0, PARTY_COLUMNS * ButtonWidth() + (PARTY_COLUMNS - 1) * GAP)
		else
			Place(button, (i - 2) % PARTY_COLUMNS, 1 + math.floor((i - 2) / PARTY_COLUMNS))
		end
		FillPreviewButton(button, sample)
	end
end

local function RefreshPreview()
	if preview:IsShown() then
		LayoutPreview()
	end
end

-- A gold flash on the low one now and then, so the gilded styles' flash shows too.
local sinceFlash = 0
preview:SetScript("OnUpdate", function(_, elapsed)
	sinceFlash = sinceFlash + elapsed
	if sinceFlash < FLASH_EVERY then
		return
	end
	sinceFlash = 0
	local button = previewButtons[3]
	if button and button.style and button.style.gilded then
		button.flash:Stop()
		button.flash:Play()
	end
end)

local function HidePreview()
	preview:Hide()
	previewFromSettings = false
end

local hookedSettings = false
-- fromSettings: beside the settings window, gone when it closes. Otherwise where the heal buttons sit.
local function ShowPreview(fromSettings)
	previewFromSettings = fromSettings
	preview:ClearAllPoints()
	local settingsPanel = fromSettings and SettingsPanel
	if settingsPanel then
		preview:SetPoint("TOPLEFT", settingsPanel, "TOPRIGHT", 12, 0)
		if not hookedSettings then
			hookedSettings = true
			settingsPanel:HookScript("OnHide", function()
				if previewFromSettings then
					HidePreview()
				end
			end)
		end
	else
		local point, _, relativePoint, x, y = grid:GetPoint()
		preview:SetPoint(point or "CENTER", UIParent, relativePoint or "CENTER", x or 0, y or 0)
	end
	sinceFlash = FLASH_EVERY - 0.5
	preview:Show()
	LayoutPreview()
end

-- The settings' Preview button (fromSettings) and /holy preview: shows the preview, or hides it when it is showing.
function ns.TogglePreview(fromSettings)
	if preview:IsShown() then
		HidePreview()
	else
		ShowPreview(fromSettings)
	end
end

ns.OnSettingChanged("healGridPercent", function(percent)
	lowCurve:ClearPoints()
	lowCurve:AddPoint(0, 1)
	lowCurve:AddPoint(percent / 100, 0)
	fadeCurve:ClearPoints()
	fadeCurve:AddPoint(0, 1)
	fadeCurve:AddPoint(percent / 100, FADED_ALPHA)
	QueueUpdate()
	RefreshPreview()
end)
for _, click in ipairs(CLICKS) do
	ns.OnSettingChanged(click.key, function()
		OutOfCombat(ApplySpells)
	end)
end
ns.OnSettingChanged("healGridDebuffs", function()
	OutOfCombat(RefreshDebuffs)
	RefreshPreview()
end)
ns.OnSettingChanged("healGrid", function()
	OutOfCombat(function()
		grid:SetShown(ns.Get("healGrid"))
	end)
end)
ns.OnSettingChanged("healGridScale", function()
	OutOfCombat(function()
		grid:SetScale(ns.Get("healGridScale"))
	end)
	RefreshPreview()
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
	RefreshPreview()
end)
ns.OnSettingChanged("healGridStyle", function()
	for _, button in ipairs(buttons) do
		ApplyStyle(button)
	end
	QueueUpdate()
	RefreshPreview()
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
	elseif event == "GROUP_ROSTER_UPDATE" or event == "PLAYER_ENTERING_WORLD" then
		OutOfCombat(RefreshDebuffs)
	end
	QueueUpdate()
end)

-- Your mana, in two places (each can be turned off in the settings):
--   1. on the heal grid's top row, beside the drag icon and above the tank; it shows with the drag icon, so only in
--      a group ("Mana on the heal buttons");
--   2. as its own bar anywhere on the screen, in and out of a group, dragged to move it (unless the box is locked),
--      with a width setting ("Mana bar", "Mana bar width").
-- Both are blue, orange under the low-mana threshold (20% by default), with your mana percent at the left and what's
-- missing at the right ("-850", or "Full"). Only displays: no clicks.
-- Mana can be secret in combat, so the code never compares it: the bars get the raw values, the orange layer and the
-- "-850" / "Full" texts get their alpha from step curves, and the texts are formatted from the secret values (if this
-- client refuses that, they keep their last readable value).
local MANA = Enum.PowerType.Mana
local MANA_ORANGE = { 1, 0.55, 0.05 }
local GRID_MANA_HEIGHT = 12
local OWN_MANA_HEIGHT = 18

local manaLowCurve = C_CurveUtil.CreateCurve()
manaLowCurve:SetType(Enum.LuaCurveType.Step)
local manaFullCurve = C_CurveUtil.CreateCurve() -- 1 at full mana, 0 below
manaFullCurve:SetType(Enum.LuaCurveType.Step)
manaFullCurve:AddPoint(0, 0)
manaFullCurve:AddPoint(1, 1)
local manaPercentCurve = C_CurveUtil.CreateCurve() -- 0 to 100, for the percent text
manaPercentCurve:SetType(Enum.LuaCurveType.Linear)
manaPercentCurve:AddPoint(0, 0)
manaPercentCurve:AddPoint(1, 100)

-- A mana bar inside parent, filling it: background, the blue bar, the orange bar over it, and the texts.
local function BuildManaBar(parent, font)
	local strip = CreateFrame("Frame", nil, parent)
	strip:SetAllPoints()
	local background = strip:CreateTexture(nil, "BACKGROUND")
	background:SetAllPoints()
	background:SetColorTexture(0, 0, 0, 0.55)

	local function Bar(r, g, b, level)
		local bar = CreateFrame("StatusBar", nil, strip)
		bar:SetPoint("TOPLEFT", 1, -1)
		bar:SetPoint("BOTTOMRIGHT", -1, 1)
		bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
		bar:SetStatusBarColor(r, g, b)
		bar:SetFrameLevel(strip:GetFrameLevel() + level)
		return bar
	end
	strip.blue = Bar(0, 0.45, 1, 1)
	strip.orange = Bar(MANA_ORANGE[1], MANA_ORANGE[2], MANA_ORANGE[3], 2)

	local text = CreateFrame("Frame", nil, strip)
	text:SetAllPoints()
	text:SetFrameLevel(strip:GetFrameLevel() + 3)
	local function Label(justify)
		local label = text:CreateFontString(nil, "OVERLAY", font)
		label:SetPoint(justify, justify == "LEFT" and 4 or -4, 0)
		label:SetJustifyH(justify)
		label:SetShadowColor(0, 0, 0, 1)
		label:SetShadowOffset(1, -1)
		return label
	end
	strip.percent = Label("LEFT")
	strip.missing = Label("RIGHT")
	strip.full = Label("RIGHT")
	strip.full:SetText("Full")
	return strip
end

-- 1. On the heal grid's top row, from the drag icon to the grid's right edge.
local gridManaHolder = CreateFrame("Frame", nil, handle)
gridManaHolder:SetPoint("LEFT", handle, "RIGHT", 3, 0)
gridManaHolder:SetPoint("RIGHT", grid, "TOPRIGHT", 0, -HANDLE_HEIGHT / 2)
gridManaHolder:SetHeight(GRID_MANA_HEIGHT)
local gridManaBar = BuildManaBar(gridManaHolder, "GameFontHighlightSmall")

local previewManaHolder = CreateFrame("Frame", nil, previewHandle)
previewManaHolder:SetPoint("LEFT", previewHandle, "RIGHT", 3, 0)
previewManaHolder:SetPoint("RIGHT", preview, "TOPRIGHT", 0, -HANDLE_HEIGHT / 2)
previewManaHolder:SetHeight(GRID_MANA_HEIGHT)
local previewManaBar = BuildManaBar(previewManaHolder, "GameFontHighlightSmall")

-- 2. Its own bar: dragged to move it, its spot saved.
local ownMana = CreateFrame("Frame", "HolyMolyManaBar", UIParent)
ownMana:SetHeight(OWN_MANA_HEIGHT)
ownMana:SetClampedToScreen(true)
ownMana:SetMovable(true)
ownMana:EnableMouse(true)
ownMana:RegisterForDrag("LeftButton")
ownMana:Hide()
ownMana:SetScript("OnDragStart", function(self)
	if not ns.Get("lock") then
		self:StartMoving()
	end
end)
ownMana:SetScript("OnDragStop", function(self)
	self:StopMovingOrSizing()
	local point, _, relativePoint, x, y = self:GetPoint()
	HolyMolyDB.manaBarPosition = { point, relativePoint, x, y }
end)
local ownManaBar = BuildManaBar(ownMana, "GameFontHighlight")

local function PlaceOwnMana()
	local pos = HolyMolyDB and HolyMolyDB.manaBarPosition
	ownMana:ClearAllPoints()
	if pos then
		ownMana:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		-- Under the middle of the screen, above the action bars.
		ownMana:SetPoint("CENTER", UIParent, "CENTER", 0, -200)
	end
end

local function FillManaBar(strip)
	local maxMana = UnitPowerMax("player", MANA)
	local mana = UnitPower("player", MANA)
	for _, bar in ipairs({ strip.blue, strip.orange }) do
		bar:SetMinMaxValues(0, maxMana)
		bar:SetValue(mana)
	end
	strip.orange:SetAlpha(UnitPowerPercent("player", MANA, false, manaLowCurve))
	strip.full:SetAlpha(UnitPowerPercent("player", MANA, false, manaFullCurve))
	strip.missing:SetAlpha(UnitPowerPercent("player", MANA, false, missingCurve))
	if not issecretvalue(mana) and not issecretvalue(maxMana) then
		strip.percent:SetText(maxMana > 0 and ("%d%%"):format(math.floor(mana / maxMana * 100 + 0.5)) or "")
		strip.missing:SetText("-" .. AbbreviateLargeNumbers(maxMana - mana))
		return
	end
	local ok, percent = pcall(function()
		return ("%d%%"):format(UnitPowerPercent("player", MANA, false, manaPercentCurve))
	end)
	if ok then
		strip.percent:SetText(percent)
	end
	local okMissing, missing = pcall(function()
		return "-" .. AbbreviateLargeNumbers(UnitPowerMissing("player", MANA))
	end)
	if okMissing then
		strip.missing:SetText(missing)
	end
end

-- Both are filled even while hidden, so one that appears (joining a group) is right at once, also at full mana when
-- no power event comes.
local function UpdateManaBars()
	FillManaBar(gridManaBar)
	FillManaBar(ownManaBar)
end

-- The preview's strip: a made-up 64% (orange only if the low-mana threshold is set above that).
local function FillPreviewManaBar()
	local maxMana, mana = 3100, 1984
	for _, bar in ipairs({ previewManaBar.blue, previewManaBar.orange }) do
		bar:SetMinMaxValues(0, maxMana)
		bar:SetValue(mana)
	end
	previewManaBar.orange:SetAlpha(mana / maxMana * 100 < ns.Get("lowManaPercent") and 1 or 0)
	previewManaBar.percent:SetText("64%")
	previewManaBar.missing:SetText("-" .. AbbreviateLargeNumbers(maxMana - mana))
	previewManaBar.full:SetAlpha(0)
	previewManaHolder:SetShown(ns.Get("gridMana"))
end

local function SafeUpdateManaBars()
	local ok, err = pcall(UpdateManaBars)
	if not ok and not reportedError then
		reportedError = true
		print("Holy Moly mana bar error: " .. tostring(err))
	end
end

ns.OnSettingChanged("lowManaPercent", function(percent)
	manaLowCurve:ClearPoints()
	manaLowCurve:AddPoint(0, 1)
	manaLowCurve:AddPoint(percent / 100, 0)
	SafeUpdateManaBars()
	FillPreviewManaBar()
end)
ns.OnSettingChanged("gridMana", function(shown)
	gridManaHolder:SetShown(shown)
	SafeUpdateManaBars()
	FillPreviewManaBar()
end)
ns.OnSettingChanged("manaBar", function(shown)
	ownMana:SetShown(shown)
	SafeUpdateManaBars()
end)
ns.OnSettingChanged("manaBarWidth", function(width)
	ownMana:SetWidth(width)
end)

local manaFrame = CreateFrame("Frame")
manaFrame:RegisterEvent("PLAYER_LOGIN")
manaFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
manaFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
manaFrame:RegisterUnitEvent("UNIT_POWER_FREQUENT", "player")
manaFrame:RegisterUnitEvent("UNIT_MAXPOWER", "player")
manaFrame:RegisterUnitEvent("UNIT_DISPLAYPOWER", "player")
manaFrame:SetScript("OnEvent", function(_, event)
	if event == "PLAYER_LOGIN" then
		PlaceOwnMana()
	end
	SafeUpdateManaBars()
end)
