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
box:SetSize(176, 150)
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

-- Alt + hovering the box: healing per spell, who you healed and recent fights. The first two are secret in combat,
-- so they wait for the end. Only with Alt, like the heal buttons, so it doesn't pop up while healing.
local function ShowDetails(self)
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
end
local boxHovered = false
box:SetScript("OnEnter", function(self)
	boxHovered = true
	if IsAltKeyDown() then
		ShowDetails(self)
	end
end)
box:SetScript("OnLeave", function(self)
	boxHovered = false
	if GameTooltip:IsOwned(self) then
		GameTooltip:Hide()
	end
end)

-- Pressing or letting go of Alt while over the box shows or hides the details.
local boxAltFrame = CreateFrame("Frame")
boxAltFrame:RegisterEvent("MODIFIER_STATE_CHANGED")
boxAltFrame:SetScript("OnEvent", function(_, _, key)
	if not boxHovered or (key ~= "LALT" and key ~= "RALT") then
		return
	end
	if IsAltKeyDown() then
		ShowDetails(box)
	elseif GameTooltip:IsOwned(box) then
		GameTooltip:Hide()
	end
end)

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

-- The social row along the bottom of the box: where the lines go (S Say, Y Yell, P Party, R Raid) and four kinds
-- of line: Report, Bill, Thanks and Drink. Each click sends one line picked at random, never the same twice in a row.
-- {star} becomes the star raid icon ({rt1}, in every client language); {heal} is the healing total, {mana} the mana
-- the last fight cost, {pct} your mana percent and {names} the three others you healed most as "[A, B, C]". A line
-- is only picked when everything it names is known right now, so the ones without names keep it short.
local SOCIAL_LINES = {
	report = {
		"{star} Healer report: {heal} healed. {star} Nobody died, you're welcome.",
		"{star} {heal} healed. {star} Most rescued: {names}.",
		"{star} The Light delivered {heal} healing today.",
		"{star} {heal} healed. {star} {names}, the floor is not a bed.",
		"{star} Shift report: {heal} healed, zero funerals.",
		"{star} {heal} healing. {star} {names}, stop hugging the boss.",
		"{star} Patched up: {names}. {star} Total: {heal}.",
		"{star} {heal} healed. {star} Same time next pull?",
		"{star} Healing done: {heal}. {star} Complaints go to the tank.",
		"{star} {heal} healed and I didn't even spill my drink.",
		"{star} {heal} healed. {star} {names}, I saw that pull. I said nothing.",
		"{star} Today's miracle count: {heal} healing.",
		"{star} {heal} healed. {star} The graveyard is disappointed.",
		"{star} Kept alive: {names}. {star} Barely, but alive.",
		"{star} {heal} healing poured in. {star} Not a drop wasted. Mostly.",
		"{star} {heal} healed. {star} The Spirit Healer has the day off.",
		"{star} Health restored: {heal}. {star} Dignity not included.",
		"{star} {heal} healed. {star} {names} made it interesting.",
		"{star} Priest report: {heal} healed, zero tears shed.",
		"{star} {heal} healed. {star} Next time, try dodging.",
	},
	bill = {
		"{star} Invoice: {heal} healed for {mana} mana. {star} Tips accepted in gold.",
		"{star} Healing isn't free: {mana} mana. {star} {names}, pay up.",
		"{star} Mana bill: {mana}. {star} Payable in gold or mana potions.",
		"{star} {heal} healed. {star} The tip jar is open.",
		"{star} Your health insurance cost {mana} mana. {star} Premiums due now.",
		"{star} {heal} healing delivered. {star} {names}, donations welcome.",
		"{star} Priest services: {heal} healed. {star} Gold, potions or compliments.",
		"{star} The collection plate is coming around. {star} {mana} mana well spent.",
		"{star} Bill for {names}: {heal} healing. {star} No refunds.",
		"{star} I heal for the Light, but the Light accepts tips.",
		"{star} {mana} mana spent on you lot. {star} Gold whispers welcome.",
		"{star} Healing fee: {heal}. {star} I take gold, potions and hugs.",
		"{star} {names}, your account is overdue. {star} {mana} mana outstanding.",
		"{star} Mana is expensive. {star} So is your time on the floor.",
		"{star} {heal} healed. {star} Leave a tip, keep the healer happy.",
		"{star} Today's special: {heal} healing. {star} Price: one mana potion.",
		"{star} Receipt: {heal} healed, {mana} mana. {star} Keep it for your records.",
		"{star} Donations keep this Priest drinking. {star} Water isn't free.",
		"{star} {names}, the Light sends its invoice. {star} Pay in gold.",
		"{star} {mana} mana gone. {star} A tip won't bring it back, but it helps.",
	},
	thanks = {
		"{star} Great run, everyone. {star} Thanks for the group!",
		"{star} GG all. {star} Easiest heals of my life.",
		"{star} Thanks for not standing in the fire.",
		"{star} Lovely group. {star} Would heal again.",
		"{star} Tank, you were a rock. {star} Thank you!",
		"{star} Smooth run. {star} Good luck with your loot.",
		"{star} Thanks, team. {star} The Light is proud of you.",
		"{star} That was fun. {star} See you next dungeon.",
		"{star} Thanks for the run. {star} You made healing easy.",
		"{star} Best group today. {star} Thank you all.",
		"{star} GG. {star} May your loot be purple.",
		"{star} Thanks, everyone. {star} Nobody stood in anything. Proud.",
		"{star} That was clean. {star} Thanks for the patience.",
		"{star} Fun run! {star} Safe travels, heroes.",
		"{star} Thanks for waiting on my drinks. {star} You're the best.",
		"{star} Great pulls, great people. {star} Thank you.",
		"{star} Thanks, {names}. {star} Easy to keep alive.",
		"{star} Well played, team. {star} The Light smiles on you.",
		"{star} Thanks for the group. {star} Add me for the next one.",
		"{star} GG all. {star} Go sell those greens.",
	},
	drink = {
		"{star} Drinking. {star} Hold the pull, please.",
		"{star} Low mana. {star} Give me a moment.",
		"{star} The Light needs a refill. {star} Wait for me.",
		"{star} Pull now and you heal yourselves.",
		"{star} Mana break. {star} One sip, then we go.",
		"{star} Healer is drinking. {star} Tank, take a breath.",
		"{star} At {pct} mana. {star} Drinking now.",
		"{star} Healer on {pct} mana. {star} Wait for the drink.",
		"{star} Drink break. {star} Thirty seconds, tops.",
		"{star} Out of holy juice. {star} Refilling.",
		"{star} Mana low, patience high. {star} One moment.",
		"{star} Hold up, sipping. {star} Then we go.",
		"{star} No mana, no heals. {star} Drinking.",
		"{star} {pct} mana left. {star} Please wait before pulling.",
		"{star} The Priest is recharging. {star} Do not pull.",
		"{star} Water time. {star} Back in a moment.",
		"{star} Tank, wait for me. {star} I'm drinking.",
		"{star} Low battery. {star} Plugging in.",
		"{star} Give me ten seconds. {star} Then go wild.",
		"{star} Drinking. {star} Whoever pulls tanks the floor.",
	},
}
ns.SOCIAL_LINES = SOCIAL_LINES

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

-- The report names the three others you healed most (not yourself).
-- nil when there is nobody to name.
local function KeptUpNames()
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
	return #names > 0 and ("[" .. table.concat(names, ", ") .. "]") or nil
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
ns.GroupChannel = GroupChannel

-- Where a social line goes. Party is instance chat in a finder group; Raid falls back to party chat outside a raid.
-- "GROUP" is the setting's old value (before the social row) and counts as Party.
local CHANNELS = {
	{ "SAY", "S", "Say" },
	{ "YELL", "Y", "Yell" },
	{ "PARTY", "P", "Party (instance chat in a finder group)" },
	{ "RAID", "R", "Raid (party chat when you're not in a raid)" },
}

local function SocialChannel()
	local pick = ns.Get("reportChannel")
	if pick == "SAY" or pick == "YELL" then
		return pick
	elseif IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
		return "INSTANCE_CHAT"
	elseif pick == "RAID" and IsInRaid() then
		return "RAID"
	elseif IsInGroup() then
		return "PARTY"
	end
end

ns.SocialChannel = SocialChannel

local lastSocial = {} -- kind -> the line sent last, so a click never repeats it

-- A random line of this kind whose placeholders are all in values, with them filled in; nil when none fits.
local function PickSocial(kind, values)
	local pool = {}
	for _, line in ipairs(SOCIAL_LINES[kind]) do
		local fits = line ~= lastSocial[kind]
		for key in line:gmatch("{(%a+)}") do
			if key ~= "star" and values[key] == nil then
				fits = false
			end
		end
		if fits then
			pool[#pool + 1] = line
		end
	end
	if #pool == 0 then
		return nil
	end
	local line = pool[math.random(#pool)]
	lastSocial[kind] = line
	-- A function replacement, so a "%" in a name can't be read as a pattern.
	return (line:gsub("{(%a+)}", function(key)
		return key == "star" and "{rt1}" or values[key]
	end))
end

-- One click on the social row. Report and Bill need your totals, which are secret in combat, so they wait for the
-- end of the fight; Thanks and Drink work any time.
local function SendSocial(kind)
	local channel = SocialChannel()
	if not channel then
		print("Holy Moly: you're not in a group. Pick S or Y on the box's bottom row to say it instead.")
		return
	end
	local values = {}
	if kind == "report" or kind == "bill" then
		local ok, heal = pcall(function()
			return PlayerTotal(HEALING) or 0
		end)
		if not ok then
			print("Holy Moly error: " .. tostring(heal))
			return
		end
		if issecretvalue(heal) then
			print("Holy Moly: totals can't be sent during combat; try again after the fight.")
			return
		end
		if heal == 0 then
			print("Holy Moly: nothing healed yet.")
			return
		end
		values.heal = ShortNumber(heal)
		local mana = ns.LastFightMana and ns.LastFightMana()
		if mana and mana > 0 then
			values.mana = ShortNumber(mana)
		end
	end
	if kind == "drink" and ns.ManaPercentText then
		values.pct = ns.ManaPercentText()
	end
	if kind ~= "drink" and ns.Get("keptUp") and not InCombatLockdown() then
		values.names = KeptUpNames()
	end
	local line = PickSocial(kind, values)
	if line then
		ns.SendChat(line, channel)
	end
end
ns.SendSocial = SendSocial

local socialDivider = box:CreateTexture(nil, "ARTWORK")
socialDivider:SetTexture("Interface\\Common\\UI-TooltipDivider-Transparent")
socialDivider:SetPoint("TOPLEFT", 8, -119)
socialDivider:SetPoint("TOPRIGHT", -8, -119)
socialDivider:SetHeight(8)

local channelButtons = {}

local function PaintChannels()
	local pick = ns.Get("reportChannel")
	if pick == "GROUP" then
		pick = "PARTY"
	end
	for _, button in ipairs(channelButtons) do
		local on = button.key == pick
		button.label:SetTextColor(on and 1 or 0.55, on and 0.82 or 0.55, on and 0.3 or 0.55)
		button.mark:SetShown(on)
	end
end

for i, channel in ipairs(CHANNELS) do
	local button = CreateFrame("Button", nil, box)
	button:SetSize(15, 16)
	button:SetPoint("TOPLEFT", 8 + (i - 1) * 15, -128)
	button.key = channel[1]
	button.label = button:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	button.label:SetPoint("CENTER")
	button.label:SetText(channel[2])
	button.mark = button:CreateTexture(nil, "ARTWORK")
	button.mark:SetColorTexture(1, 0.82, 0.3)
	button.mark:SetHeight(1)
	button.mark:SetPoint("BOTTOMLEFT", 3, 0)
	button.mark:SetPoint("BOTTOMRIGHT", -3, 0)
	local highlight = button:CreateTexture(nil, "HIGHLIGHT")
	highlight:SetAllPoints()
	highlight:SetColorTexture(1, 1, 1, 0.12)
	button:SetScript("OnClick", function()
		ns.Set("reportChannel", channel[1])
		PaintChannels()
	end)
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText("Send to: " .. channel[3])
		GameTooltip:AddLine("Where the four buttons on this row send their lines.", 1, 1, 1, true)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", GameTooltip_Hide)
	channelButtons[i] = button
end
ns.OnSettingChanged("reportChannel", PaintChannels)

-- The four kinds, left to right, with an icon each so they're easy to tell apart.
local SOCIAL_BUTTONS = {
	{ "report", "voicechat-icon-speaker", "Report", "Report", "A funny line with your healing, sometimes naming who you kept up. After the fight." },
	{ "bill", "Interface\\Icons\\INV_Misc_Coin_01", "Bill", "Bill", "The invoice: your healing and the mana it cost, tips and potions welcome. After the fight." },
	{ "thanks", "Interface\\Icons\\Spell_Holy_Renew", "Thanks", "Thanks", "A friendly thank-you to the group, for the end of a good run. Any time." },
	{ "drink", "Interface\\Icons\\INV_Drink_07", "Drink", "Drink", "Asks the group to wait while you drink, with your mana when it can be read. Any time." },
}
for i, entry in ipairs(SOCIAL_BUTTONS) do
	local kind = entry[1]
	local button = IconButton(entry[2], entry[3], entry[4], entry[5], function()
		SendSocial(kind)
	end)
	button:SetSize(18, 18)
	button:SetPoint("TOPLEFT", 74 + (i - 1) * 21, -127)
end

local channelSetup = CreateFrame("Frame")
channelSetup:RegisterEvent("PLAYER_LOGIN")
channelSetup:SetScript("OnEvent", function()
	if ns.Get("reportChannel") == "GROUP" then
		ns.Set("reportChannel", "PARTY") -- the old "party, raid or instance chat" choice
	end
	PaintChannels()
end)

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
	elseif msg == "check" then
		ns.CheckHealButtons()
	elseif msg == "heals" then
		ns.ToggleHealGrid()
	elseif msg == "preview" then
		ns.TogglePreview(false)
	elseif msg == "soul" then
		ns.DebugWeakenedSoul()
	elseif msg == "tank" then
		ns.ToggleTank()
	elseif msg == "tank clear" then
		ns.ClearTanks()
	else
		print("Holy Moly: /holy reset | show | hide | heals | preview | config | check | tank | tank clear. Drag the box to move it.")
	end
end

-- Holy Moly in the minimap's addon menu (## AddonCompartmentFunc), also used by the minimap button: a click shows or
-- hides the box, a Shift-click the heal buttons, a right-click opens the settings.
function HolyMoly_OnAddonCompartmentClick(_, buttonName)
	if buttonName == "RightButton" then
		ns.OpenSettings()
	elseif IsShiftKeyDown() then
		ns.ToggleHealGrid()
	else
		box:SetShown(not box:IsShown())
	end
end
