-- Mana: a bar with your current mana, plus the mana your spells cost in the current or last fight.
--
-- UnitPower can be secret in combat, so the bar only hands it to the StatusBar, which accepts secrets. "Mana used"
-- is our own sum of spell costs (C_Spell.GetSpellPowerCost is never secret), so it can be shown and reported.

local _, ns = ...

local box = ns.box
local MANA = Enum.PowerType.Mana

local bar = CreateFrame("StatusBar", nil, box)
bar:SetPoint("TOPLEFT", 10, -93)
bar:SetPoint("TOPRIGHT", -30, -93)
bar:SetHeight(9)
bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
bar:SetStatusBarColor(0, 0.45, 1)
local barBackground = bar:CreateTexture(nil, "BACKGROUND")
barBackground:SetAllPoints()
barBackground:SetColorTexture(0, 0, 0, 0.5)

local usedValue = ns.AddRow("Mana used", 0.45, 0.65, 1, -107)
usedValue:SetText("-")

local fightStart -- GetTime() when the current fight began; nil out of combat
local fightSpent = 0
local lastSpent, lastPerMinute

local function PerMinute(spent, seconds)
	if seconds < 1 then
		return spent
	end
	return math.floor(spent / seconds * 60 + 0.5)
end

local function ShowUsed()
	local spent, perMinute = lastSpent, lastPerMinute
	if fightStart then
		spent, perMinute = fightSpent, PerMinute(fightSpent, GetTime() - fightStart)
	end
	if spent then
		usedValue:SetText(("%s (%s/min)"):format(ns.ShortNumber(spent), ns.ShortNumber(perMinute)))
	end
end

local function UpdateBar()
	bar:SetMinMaxValues(0, UnitPowerMax("player", MANA))
	bar:SetValue(UnitPower("player", MANA))
end

-- The drink button next to the bar yells one of these; %s is " (23% mana)" when your mana is readable (out of
-- combat), else empty.
local DRINK_LINES = {
	"{rt5} Hold the pull, I need to drink%s.",
	"{rt5} Wait for me, low on mana%s.",
	"{rt5} Drinking%s. Give me a moment before the next pull.",
	"{rt5} The Light needs a refill%s. Wait for me!",
}

local function ManaPercentText()
	local mana, maxMana = UnitPower("player", MANA), UnitPowerMax("player", MANA)
	if issecretvalue(mana) or issecretvalue(maxMana) or maxMana == 0 then
		return ""
	end
	return (" (%d%% mana)"):format(math.floor(mana / maxMana * 100 + 0.5))
end

local drinkButton = ns.IconButton("Interface\\Icons\\INV_Drink_07", "Drink", "Ask to wait",
	"Yells that you need to drink.", function()
		ns.SendChat(ns.RandomLine(DRINK_LINES):format(ManaPercentText()), "YELL")
	end)
drinkButton:SetSize(16, 16)
drinkButton:SetPoint("LEFT", bar, "RIGHT", 6, 0)

local function ManaCost(spellID)
	local costs = C_Spell.GetSpellPowerCost(spellID)
	for _, cost in ipairs(costs or {}) do
		if cost.type == MANA then
			return cost.cost
		end
	end
	return 0
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_REGEN_DISABLED")
frame:RegisterEvent("PLAYER_REGEN_ENABLED")
frame:RegisterUnitEvent("UNIT_POWER_FREQUENT", "player")
frame:RegisterUnitEvent("UNIT_MAXPOWER", "player")
frame:RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED", "player")
frame:SetScript("OnEvent", function(_, event, ...)
	if event == "PLAYER_REGEN_DISABLED" then
		fightStart, fightSpent = GetTime(), 0
	elseif event == "PLAYER_REGEN_ENABLED" then
		if fightStart then
			lastSpent, lastPerMinute = fightSpent, PerMinute(fightSpent, GetTime() - fightStart)
		end
		fightStart = nil
	elseif event == "UNIT_SPELLCAST_SUCCEEDED" then
		local _, _, spellID = ...
		if fightStart and not issecretvalue(spellID) then
			fightSpent = fightSpent + ManaCost(spellID)
		end
	else
		UpdateBar()
		return
	end
	ShowUsed()
end)
