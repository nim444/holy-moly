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

-- Mana used in the last finished fight, for the fight history; nil before the first fight.
function ns.LastFightMana()
	return lastSpent
end

-- Low-mana warning: a pulsing red glow over the bar below the threshold. Mana can be secret in combat, so the code
-- never compares it: the game evaluates a step curve (1 below the threshold, 0 above) on the mana percent and the
-- result goes straight to SetAlpha, which accepts secrets.
local warning = CreateFrame("Frame", nil, bar)
warning:SetAllPoints()
local glow = warning:CreateTexture(nil, "OVERLAY")
glow:SetPoint("TOPLEFT", -2, 2)
glow:SetPoint("BOTTOMRIGHT", 2, -2)
glow:SetColorTexture(1, 0.1, 0.1, 0.6)
local pulse = glow:CreateAnimationGroup()
pulse:SetLooping("BOUNCE")
local fade = pulse:CreateAnimation("Alpha")
fade:SetFromAlpha(1)
fade:SetToAlpha(0.2)
fade:SetDuration(0.6)
pulse:Play()

local lowManaCurve = C_CurveUtil.CreateCurve()
lowManaCurve:SetType(Enum.LuaCurveType.Step)

local function UpdateWarning()
	if not ns.Get("lowMana") then
		warning:Hide()
		return
	end
	warning:Show()
	warning:SetAlpha(UnitPowerPercent("player", MANA, false, lowManaCurve))
end

ns.OnSettingChanged("lowManaPercent", function(percent)
	lowManaCurve:ClearPoints()
	lowManaCurve:AddPoint(0, 1)
	lowManaCurve:AddPoint(percent / 100, 0)
	UpdateWarning()
end)
ns.OnSettingChanged("lowMana", UpdateWarning)

local function UpdateBar()
	bar:SetMinMaxValues(0, UnitPowerMax("player", MANA))
	bar:SetValue(UnitPower("player", MANA))
	UpdateWarning()
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

-- Low mana after a fight: when a fight ends with your mana under the low-mana threshold and you're in a group, one
-- of these goes to the group chat (party, raid or instance) so they wait for you before the next pull; %d is your
-- mana percent. Out of combat the mana is readable, so the number is real. At most once every TELL_GAP seconds.
local WAIT_LINES = {
	"{rt5} Hey, slow down! I'm at %d%% mana. Wait for me before the next pull.",
	"{rt5} Healer on %d%% mana. The next pull waits for my drink, or you wait for the Spirit Healer.",
	"{rt5} Mana check: %d%%. Pull now and you're healing yourselves.",
	"{rt5} The Light runs on mana and I'm at %d%%. One drink before the next round, please.",
	"{rt5} %d%% mana left. Tank, take a breath; I'm taking a drink.",
	"{rt5} Out of holy juice: %d%% mana. Drinking, then we go.",
	"{rt5} Hold up! %d%% mana. My drink is not optional.",
	"{rt5} %d%% mana. Whoever pulls now has volunteered to tank the floor.",
	"{rt5} Easy there, heroes. %d%% mana left; next round after my drink.",
	"{rt5} Low battery: %d%% mana. Recharging, please hold.",
	"{rt5} Go slow, friends: %d%% mana. Give me a moment before the next pull.",
	"{rt5} Healing is paused at %d%% mana. Wait for the drink, then we ride.",
}
local TELL_GAP = 20
local lastTold = 0

local function TellLowMana()
	if not ns.Get("lowManaTell") or InCombatLockdown() or UnitIsDeadOrGhost("player")
		or GetTime() - lastTold < TELL_GAP then
		return
	end
	local channel = ns.GroupChannel and ns.GroupChannel()
	if not channel then
		return
	end
	local mana, maxMana = UnitPower("player", MANA), UnitPowerMax("player", MANA)
	if issecretvalue(mana) or issecretvalue(maxMana) or maxMana == 0 then
		return
	end
	local percent = math.floor(mana / maxMana * 100 + 0.5)
	if percent >= ns.Get("lowManaPercent") then
		return
	end
	if ns.SendChat(ns.RandomLine(WAIT_LINES):format(percent), channel) then
		lastTold = GetTime()
	end
end

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
		-- A moment after the fight, so a pull that follows at once (still in combat) skips it.
		C_Timer.After(1, TellLowMana)
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
