-- Holy Moly: a small box with the healing and absorbs you have done.
--
-- Combat log events are not available to addons in Forever, so the numbers come from Blizzard's built-in
-- damage meter (C_DamageMeter, "Overall" session). In combat those numbers are secret values: addon code may
-- pass them to AbbreviateLargeNumbers and FontString:SetText, but must not compare or do math on them.

local _, ns = ...

local REFRESH_SECONDS = 0.5

local OVERALL = Enum.DamageMeterSessionType.Overall
local HEALING = Enum.DamageMeterType.HealingDone
local ABSORBS = Enum.DamageMeterType.Absorbs
local DISPELS = Enum.DamageMeterType.Dispels
local DEATHS = Enum.DamageMeterType.Deaths

local playerGUID

-- Shared with Mana.lua (the mana rows at the bottom of the box) and BuffCheck.lua (the buttons under it).
local box = CreateFrame("Frame", "HolyMolyBox", UIParent, "BackdropTemplate")
ns.box = box
box:SetSize(176, 126)
box:SetClampedToScreen(true)
box:SetMovable(true)
box:EnableMouse(true)
box:RegisterForDrag("LeftButton")
-- Blizzard's dark dialog background inside the gold dialog border, scaled down to suit a small box.
ns.BACKDROP = {
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
	edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border",
	tile = true,
	tileSize = 16,
	edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 },
}
box:SetBackdrop(ns.BACKDROP)
box:SetBackdropColor(1, 1, 1, 0.9)

function ns.AddRow(label, r, g, b, y)
	local name = box:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	name:SetPoint("TOPLEFT", 10, y)
	name:SetText(label)
	name:SetTextColor(r, g, b)
	local value = box:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	value:SetPoint("TOPRIGHT", -10, y)
	value:SetJustifyH("RIGHT")
	return value
end

-- The Holy Moly logo (tools/make_icons.py), the same one the AddOn List shows.
local logo = box:CreateTexture(nil, "ARTWORK")
logo:SetSize(16, 16)
logo:SetPoint("TOPLEFT", 8, -7)
logo:SetTexture("Interface\\AddOns\\HolyMoly\\Media\\Icon")

local title = box:CreateFontString(nil, "OVERLAY", "GameFontNormal")
title:SetPoint("LEFT", logo, "RIGHT", 4, 0)
title:SetText("Holy Moly")

local divider = box:CreateTexture(nil, "ARTWORK")
divider:SetTexture("Interface\\Common\\UI-TooltipDivider-Transparent")
divider:SetPoint("TOPLEFT", 8, -22)
divider:SetPoint("TOPRIGHT", -8, -22)
divider:SetHeight(8)

local healValue = ns.AddRow("Healing", 0.4, 1, 0.4, -31)
local absorbValue = ns.AddRow("Absorbs", 1, 0.85, 0.3, -46)
local dispelValue = ns.AddRow("Dispels", 0.6, 0.8, 1, -61)
local deathValue = ns.AddRow("Deaths", 1, 0.4, 0.4, -76)
deathValue:SetText("0")

-- The player's total for one meter type, or nil when the meter has nothing for us yet.
local function PlayerTotal(meterType)
	local source = C_DamageMeter.GetCombatSessionSourceFromType(OVERALL, meterType, playerGUID)
	if not source or not canaccesstable(source) then
		return nil
	end
	return source.totalAmount
end

local function ShowTotal(fontString, total)
	-- A secret number is still truthy, so this test is allowed; the value itself only goes to secret-safe APIs.
	fontString:SetText(total and AbbreviateLargeNumbers(total) or "0")
end

-- Names of the group members who died this session, or nil while the meter keeps them secret (in combat).
local function GroupDeaths()
	local session = C_DamageMeter.GetCombatSessionFromType(OVERALL, DEATHS)
	if not session then
		return {}
	elseif not canaccesstable(session) then
		return nil
	end
	local sources = session.combatSources
	if not sources then
		return {}
	elseif issecretvalue(sources) or not canaccesstable(sources) then
		return nil
	end
	local names = {}
	for _, source in ipairs(sources) do
		if issecretvalue(source) or not canaccesstable(source) or issecretvalue(source.name) then
			return nil
		end
		names[#names + 1] = source.name
	end
	return names
end

local reportedError = false

local function Refresh()
	if not playerGUID then
		return
	end
	-- The beta changes often: on an error show "?" and print it once instead of every tick.
	local ok, err = pcall(function()
		ShowTotal(healValue, PlayerTotal(HEALING))
		ShowTotal(absorbValue, PlayerTotal(ABSORBS))
		ShowTotal(dispelValue, PlayerTotal(DISPELS))
	end)
	-- In combat the death list is secret; the row then keeps its last number until the fight ends.
	local deathsOk, deaths = pcall(GroupDeaths)
	if deathsOk and deaths then
		deathValue:SetText(#deaths)
	end
	if not ok then
		healValue:SetText("?")
		absorbValue:SetText("?")
		dispelValue:SetText("?")
		if not reportedError then
			reportedError = true
			print("Holy Moly error: " .. tostring(err))
		end
	end
end

-- Who you healed. The meter has no per-target numbers and the combat log is closed to addons, so this counts
-- your own casts per target name; a report keeps only spells the meter lists under healing or absorbs.
local hiddenCasts = 0
local pendingCasts, pendingCount = {}, 0

-- Your healing and shields per spell from the meter, most first:
-- { { name = "Flash Heal", amount = 2100, over = 600, icon = ... }, ... }.
-- "over" is the meter's overkillAmount, which for heals should be overhealing; Blizzard's own meter never shows
-- it, so the tooltip only mentions it when it is above 0. Spells whose numbers are secret (in combat) are left out.
local function SpellBreakdown()
	local byName, list = {}, {}
	for _, meterType in ipairs({ HEALING, ABSORBS }) do
		local source = C_DamageMeter.GetCombatSessionSourceFromType(OVERALL, meterType, playerGUID)
		if source and canaccesstable(source) and source.combatSpells and canaccesstable(source.combatSpells) then
			for _, spell in ipairs(source.combatSpells) do
				if not issecretvalue(spell.spellID) and not issecretvalue(spell.totalAmount) then
					local name = C_Spell.GetSpellName(spell.spellID)
					if name then
						local entry = byName[name]
						if not entry then
							entry = { name = name, amount = 0, over = 0, icon = C_Spell.GetSpellTexture(spell.spellID) }
							byName[name] = entry
							list[#list + 1] = entry
						end
						entry.amount = entry.amount + spell.totalAmount
						local over = meterType == HEALING and spell.overkillAmount
						if over and not issecretvalue(over) then
							entry.over = entry.over + over
						end
					end
				end
			end
		end
	end
	table.sort(list, function(a, b) return a.amount > b.amount end)
	return list
end

local function HealSpellNames()
	local names = {}
	for _, entry in ipairs(SpellBreakdown()) do
		names[entry.name] = true
	end
	return names
end

-- Heal counts per target, most first: { { name = "Pestilen", count = 12 }, ... }
local function HealedTargets()
	local healNames = HealSpellNames()
	local list = {}
	for target, spells in pairs(HolyMolyDB.healed) do
		local count = 0
		for spellName, n in pairs(spells) do
			if healNames[spellName] then
				count = count + n
			end
		end
		if count > 0 then
			list[#list + 1] = { name = target, count = count }
		end
	end
	table.sort(list, function(a, b) return a.count > b.count end)
	return list
end

-- Forever names have a first and a last name: UnitName("player") returns them apart ("Nima", "Ka") while cast
-- targets come in full ("Nima Ka").
local function PlayerFullName()
	local first, last = UnitName("player")
	return (last and last ~= "") and first .. " " .. last or first
end

-- "Parliament Funkedelic" -> "Parliament", for short reports.
local function FirstName(name)
	return name:match("^[^%s%-]+") or name
end

local function ClearHealLog()
	if HolyMolyDB and HolyMolyDB.healed then
		wipe(HolyMolyDB.healed)
	end
	wipe(pendingCasts)
	pendingCount = 0
	hiddenCasts = 0
end

local castFrame = CreateFrame("Frame")
castFrame:SetScript("OnEvent", function(_, event, ...)
	if event == "UNIT_SPELLCAST_SENT" then
		local _, target, castGUID = ...
		-- In restricted content Blizzard can hide the cast details; those casts are not counted.
		if issecretvalue(target) or issecretvalue(castGUID) then
			hiddenCasts = hiddenCasts + 1
			return
		end
		if not castGUID then
			return
		end
		if pendingCount >= 20 then
			-- Casts that never went off (interrupted, out of range, ...).
			wipe(pendingCasts)
			pendingCount = 0
		end
		if not target or target == "" then
			target = PlayerFullName()
		end
		pendingCasts[castGUID] = target
		pendingCount = pendingCount + 1
	else -- UNIT_SPELLCAST_SUCCEEDED
		local _, castGUID, spellID = ...
		if issecretvalue(castGUID) or issecretvalue(spellID) then
			return
		end
		local target = castGUID and pendingCasts[castGUID]
		if not target then
			return
		end
		pendingCasts[castGUID] = nil
		pendingCount = pendingCount - 1
		local spellName = C_Spell.GetSpellName(spellID)
		if spellName then
			local spells = HolyMolyDB.healed[target] or {}
			HolyMolyDB.healed[target] = spells
			spells[spellName] = (spells[spellName] or 0) + 1
		end
	end
end)

-- Recent fights: after each fight, its healing and shields from the meter's "Current" session (readable again
-- once combat is over), how long it lasted and the mana it cost.
local CURRENT = Enum.DamageMeterSessionType.Current
local HISTORY_SIZE = 10
local HISTORY_SHOWN = 5

local function RecordFight()
	local function Total(meterType)
		local source = C_DamageMeter.GetCombatSessionSourceFromType(CURRENT, meterType, playerGUID)
		local amount = source and canaccesstable(source) and source.totalAmount or 0
		return not issecretvalue(amount) and amount or nil
	end
	local heal, absorb = Total(HEALING), Total(ABSORBS)
	local seconds = C_DamageMeter.GetSessionDurationSeconds(CURRENT)
	if not heal or not absorb or heal + absorb == 0 or not seconds or issecretvalue(seconds) then
		return
	end
	table.insert(HolyMolyDB.history, 1, {
		when = time(),
		seconds = math.floor(seconds + 0.5),
		heal = heal,
		absorb = absorb,
		mana = ns.LastFightMana(),
	})
	while #HolyMolyDB.history > HISTORY_SIZE do
		table.remove(HolyMolyDB.history)
	end
end

local function AddSection(heading)
	GameTooltip:AddLine(" ")
	GameTooltip:AddLine(heading, NORMAL_FONT_COLOR:GetRGB())
end

local function AddHistory()
	local history = HolyMolyDB.history
	if not ns.Get("history") or #history == 0 then
		return
	end
	AddSection("Recent fights")
	for i = 1, math.min(HISTORY_SHOWN, #history) do
		local fight = history[i]
		GameTooltip:AddDoubleLine(("%s  (%ds)"):format(date("%H:%M", fight.when), fight.seconds),
			("%s healed, %s shielded"):format(ns.ShortNumber(fight.heal), ns.ShortNumber(fight.absorb)),
			1, 1, 1, 1, 1, 1)
	end
	if #history >= 2 then
		local function PerSecond(fight)
			return (fight.heal + fight.absorb) / math.max(fight.seconds, 1)
		end
		local change = math.floor((PerSecond(history[1]) / PerSecond(history[2]) - 1) * 100 + 0.5)
		GameTooltip:AddLine(("Last fight vs the one before: %+d%% healing per second"):format(change), 0.6, 0.8, 1)
	end
end

-- Hovering the box: healing per spell, who you healed and recent fights. The first two are secret in combat, so
-- they wait for the end.
box:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
	GameTooltip:SetText("Holy Moly")
	if InCombatLockdown() then
		GameTooltip:AddLine("Details are shown after the fight.", 1, 1, 1)
		AddHistory()
		GameTooltip:Show()
		return
	end

	AddSection("Healing by spell")
	local spellsOk, spells = pcall(SpellBreakdown)
	local total = 0
	for _, entry in ipairs(spellsOk and spells or {}) do
		total = total + entry.amount
	end
	if total == 0 then
		GameTooltip:AddLine("No healing yet.", 1, 1, 1)
	else
		for _, entry in ipairs(spells) do
			if entry.amount > 0 then
				local name = entry.icon and ("|T%s:14:14|t %s"):format(entry.icon, entry.name) or entry.name
				local share = math.floor(entry.amount / total * 100 + 0.5)
				local value = ("%s  (%d%%)"):format(ns.ShortNumber(entry.amount), share)
				if entry.over > 0 then
					value = ("%s, %d%% over"):format(value, entry.over / (entry.amount + entry.over) * 100 + 0.5)
				end
				GameTooltip:AddDoubleLine(name, value, 1, 1, 1, 1, 1, 1)
			end
		end
	end

	AddSection("Who you healed")
	local ok, list = pcall(HealedTargets)
	if not ok or #list == 0 then
		GameTooltip:AddLine("No heals yet.", 1, 1, 1)
	else
		for _, entry in ipairs(list) do
			GameTooltip:AddDoubleLine(FirstName(entry.name), entry.count == 1 and "1 heal" or entry.count .. " heals",
				1, 1, 1, 1, 1, 1)
		end
	end
	if hiddenCasts > 0 then
		GameTooltip:AddLine(hiddenCasts .. " casts were hidden by Blizzard and not counted.", 0.6, 0.6, 0.6, true)
	end
	AddHistory()
	GameTooltip:Show()
end)
box:SetScript("OnLeave", GameTooltip_Hide)

local function ResetTotals()
	-- This also clears Blizzard's own damage meter.
	C_DamageMeter.ResetAllCombatSessions()
	ClearHealLog()
	Refresh()
end

-- The trash button asks first, in Blizzard's own Yes/No dialog.
StaticPopupDialogs.HOLYMOLY_RESET = {
	text = "Reset Holy Moly's totals and heal list?\nThis also resets Blizzard's damage meter.",
	button1 = YES,
	button2 = NO,
	OnAccept = ResetTotals,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
}

-- A small icon button from a texture file (a path) or one of Blizzard's atlases; falls back to a text label if
-- the atlas is missing.
local function IconButton(atlas, fallbackText, title, note, onClick)
	local button = CreateFrame("Button", nil, box)
	button:SetSize(14, 14)
	if atlas:find("\\", 1, true) then
		button:SetNormalTexture(atlas)
		button:SetHighlightTexture(atlas, "ADD")
	elseif C_Texture.GetAtlasInfo(atlas) then
		button:SetNormalAtlas(atlas)
		button:SetHighlightAtlas(atlas, "ADD")
	else
		local label = button:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		label:SetPoint("RIGHT")
		label:SetText(fallbackText)
		button:SetWidth(label:GetStringWidth())
	end
	button:SetScript("OnClick", onClick)
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText(title)
		GameTooltip:AddLine(note, 1, 1, 1)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", GameTooltip_Hide)
	return button
end

ns.IconButton = IconButton

-- Forever has no trash-can atlas, so the icon is our own (tools/make_icons.py).
local resetButton = IconButton("Interface\\AddOns\\HolyMoly\\Media\\Trash.tga", "Reset", "Reset totals",
	"Asks first. Also resets Blizzard's damage meter.", function()
		StaticPopup_Show("HOLYMOLY_RESET")
	end)
resetButton:SetPoint("TOPRIGHT", -10, -8)

-- One line is picked at random per yell (never the same twice in a row), so repeats don't read like spam.
-- {rt5} is the moon raid icon in chat, in every client language; the two %s are healing and shields.
local YELL_LINES = {
	"{rt5} The Light held: %s healed, %s shielded.",
	"{rt5} %s healing, %s in shields. Stay close to the Priest.",
	"{rt5} By the Light: %s healed and %s absorbed.",
	"{rt5} Another fight survived: %s healed, %s shielded.",
}

-- 33143 -> "33.1k", 2000000 -> "2M"
local function ShortNumber(n)
	if n >= 1e6 then
		return (("%.1fM"):format(n / 1e6):gsub("%.0M", "M"))
	elseif n >= 1e3 then
		return (("%.1fk"):format(n / 1e3):gsub("%.0k", "k"))
	end
	return tostring(n)
end
ns.ShortNumber = ShortNumber

-- A random line from a list, never the same one twice in a row (the list remembers its last pick).
function ns.RandomLine(lines)
	local index = math.random(#lines)
	if index == lines.last then
		index = index % #lines + 1
	end
	lines.last = index
	return lines[index]
end

-- Sends a chat message; prints why when the game refuses it. Returns true when it went out.
function ns.SendChat(message, chatType)
	local sent, err = pcall(C_ChatInfo.SendChatMessage, message, chatType)
	if not sent then
		print(("Holy Moly: %s failed: %s"):format(chatType:lower(), tostring(err)))
	end
	return sent
end

local TOP_HEALED = 3

-- "Nima Ka-Realm" -> "nimaka": compare names without spaces, punctuation, case or realm.
local function NameKey(name)
	return (name:gsub("%-.*$", ""):gsub("\194\160", ""):gsub("[%s%p]", ""):lower())
end

local function IsMe(name)
	-- Also the bare first name: older self-casts were logged under it, before PlayerFullName existed.
	local key = NameKey(name)
	if key == NameKey(PlayerFullName()) or key == NameKey((UnitName("player"))) then
		return true
	end
	-- A group member's name also works as a unit; ask the game whether it is us.
	local ok, same = pcall(UnitIsUnit, name, "player")
	return ok and not issecretvalue(same) and same == true
end

-- The /say line after the yell names the three others you healed most (not yourself); %s is "Pestilen, Razorgir,
-- Hauru".
local KEPT_UP_LINES = {
	"Kept up: %s.",
	"Most healed: %s.",
	"Kept alive: %s.",
	"Thanks for staying in range, %s.",
	"Top patients: %s.",
}
local KEPT_UP_DELAY = 1

-- nil when there is nobody to name.
local function KeptUpMessage()
	local ok, list = pcall(HealedTargets)
	if not ok then
		return nil
	end
	local names = {}
	for _, entry in ipairs(list) do
		if not IsMe(entry.name) then
			names[#names + 1] = FirstName(entry.name)
			if #names == TOP_HEALED then
				break
			end
		end
	end
	return #names > 0 and ns.RandomLine(KEPT_UP_LINES):format(table.concat(names, ", ")) or nil
end

-- The chat for the "GROUP" setting: instance chat in a dungeon-finder group, else raid or party; nil when solo.
local function GroupChannel()
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
		return "INSTANCE_CHAT"
	elseif IsInRaid() then
		return "RAID"
	elseif IsInGroup() then
		return "PARTY"
	end
end

-- The speaker button: your totals, then who you kept up, to the chat picked in the settings.
local function ReportTotals()
	local ok, heal, absorb = pcall(function()
		return PlayerTotal(HEALING) or 0, PlayerTotal(ABSORBS) or 0
	end)
	if not ok then
		print("Holy Moly error: " .. tostring(heal))
		return
	end
	-- Chat refuses secret text from addons, and the totals are secret during combat.
	if issecretvalue(heal) or issecretvalue(absorb) then
		print("Holy Moly: totals can't be yelled during combat; try again after the fight.")
		return
	end
	if heal == 0 and absorb == 0 then
		print("Holy Moly: nothing healed or shielded yet.")
		return
	end
	local first, second = "YELL", "SAY"
	if ns.Get("reportChannel") == "SAY" then
		first = "SAY"
	elseif ns.Get("reportChannel") == "GROUP" then
		first = GroupChannel()
		second = first
		if not first then
			print("Holy Moly: you're not in a group. Options > AddOns > Holy Moly sets where the totals go.")
			return
		end
	end
	if not ns.SendChat(ns.RandomLine(YELL_LINES):format(ShortNumber(heal), ShortNumber(absorb)), first) then
		return
	end
	-- Who you kept up follows a second later. Outside instances the game only accepts /say straight from a click,
	-- so there a /say line goes out at once; group chat can always wait.
	local keptUp = ns.Get("keptUp") and KeptUpMessage()
	if not keptUp then
		return
	end
	if second ~= "SAY" or IsInInstance() then
		C_Timer.After(KEPT_UP_DELAY, function()
			ns.SendChat(keptUp, second)
		end)
	else
		ns.SendChat(keptUp, second)
	end
end

local yellButton = IconButton("voicechat-icon-speaker", "Yell", "Report totals",
	"Sends your totals, then the three people you healed most. Out of combat only. Where it goes: "
	.. "Options > AddOns > Holy Moly.", ReportTotals)
yellButton:SetPoint("RIGHT", resetButton, "LEFT", -6, 0)

local function SavePosition()
	local point, _, relativePoint, x, y = box:GetPoint()
	HolyMolyDB.position = { point, relativePoint, x, y }
end

local function RestorePosition()
	local pos = HolyMolyDB.position
	box:ClearAllPoints()
	if pos then
		box:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		box:SetPoint("CENTER", UIParent, "CENTER", 0, -180)
	end
end

box:SetScript("OnDragStart", function(self)
	if not ns.Get("lock") then
		self:StartMoving()
	end
end)
box:SetScript("OnDragStop", function(self)
	self:StopMovingOrSizing()
	SavePosition()
end)

ns.OnSettingChanged("scale", function(scale)
	box:SetScale(scale)
end)

box:RegisterEvent("PLAYER_LOGIN")
box:RegisterEvent("PLAYER_REGEN_ENABLED")
box:RegisterEvent("DAMAGE_METER_RESET")
box:SetScript("OnEvent", function(_, event)
	if event == "PLAYER_LOGIN" then
		-- Settings.lua has set up HolyMolyDB on ADDON_LOADED.
		castFrame:RegisterUnitEvent("UNIT_SPELLCAST_SENT", "player")
		castFrame:RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED", "player")
		RestorePosition()
		-- Read once out of combat, where the player's own GUID is not secret.
		local guid = UnitGUID("player")
		if not issecretvalue(guid) then
			playerGUID = guid
		end
		local available, reason = C_DamageMeter.IsDamageMeterAvailable()
		if not available then
			print("Holy Moly: Blizzard's damage meter is not available: " .. tostring(reason))
		end
		C_Timer.NewTicker(REFRESH_SECONDS, Refresh)
	elseif event == "PLAYER_REGEN_ENABLED" then
		-- Give the meter a moment to close the fight and lift the secrecy before reading it.
		C_Timer.After(1, function()
			pcall(RecordFight)
		end)
	elseif event == "DAMAGE_METER_RESET" then
		-- Keep the log in step with the totals, also when Blizzard's own meter is reset.
		ClearHealLog()
	end
	Refresh()
end)

SLASH_HOLYMOLY1 = "/holymoly"
SLASH_HOLYMOLY2 = "/holy"
SlashCmdList.HOLYMOLY = function(msg)
	msg = strtrim(msg or ""):lower()
	if msg == "reset" then
		ResetTotals()
		print("Holy Moly: totals reset.")
	elseif msg == "show" then
		box:Show()
	elseif msg == "hide" then
		box:Hide()
	elseif msg == "config" or msg == "options" then
		ns.OpenSettings()
	else
		print("Holy Moly: /holy reset | show | hide | config. Drag the box to move it.")
	end
end

-- Holy Moly in the minimap's addon menu (## AddonCompartmentFunc): a click shows or hides the box, a right-click
-- opens the settings.
function HolyMoly_OnAddonCompartmentClick(_, buttonName)
	if buttonName == "RightButton" then
		ns.OpenSettings()
	else
		box:SetShown(not box:IsShown())
	end
end
