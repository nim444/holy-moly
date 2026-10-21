-- Buff check: out of combat, a row of spell buttons under the box, one for each Priest buff someone in the group
-- is missing or has under five minutes left on. A click casts it on the first person who needs it: missing before
-- running out, in range first. Hidden in combat.
--
-- The buttons use Blizzard's InsecureActionButtonTemplate, which casts only out of combat. Unlike a secure button
-- it doesn't lock its parent in combat, so the box can still be dragged and hidden then.

local _, ns = ...

-- Spell names as the English client shows them. "also" lists group versions that count as having the buff.
local BUFFS = {
	{ spell = "Power Word: Fortitude", also = { "Prayer of Fortitude" } },
	{ spell = "Divine Spirit", also = { "Prayer of Spirit" } },
	{ spell = "Shadow Protection", also = { "Prayer of Shadow Protection" } },
	{ spell = "Inner Fire", selfOnly = true },
	{ spell = "Fear Ward", selfOnly = true },
}
local BUTTON_SIZE = 24
local CHECK_SECONDS = 2
local REBUFF_SECONDS = 5 * 60

local bar = CreateFrame("Frame", nil, ns.box)
bar:SetPoint("TOPLEFT", ns.timerPanel, "BOTTOMLEFT", 0, -4)
bar:SetSize(1, BUTTON_SIZE)
bar:Hide()

local buttons = {}

local function GetButton(index)
	if buttons[index] then
		return buttons[index]
	end
	local button = CreateFrame("Button", nil, bar, "InsecureActionButtonTemplate")
	button:SetSize(BUTTON_SIZE, BUTTON_SIZE)
	button:SetPoint("LEFT", (index - 1) * (BUTTON_SIZE + 4), 0)
	button:RegisterForClicks("LeftButtonUp")
	-- Act on the mouse release; with the game's default "cast on key down" a mouse click would do nothing.
	button:SetAttribute("useOnKeyDown", false)
	button:SetAttribute("type", "spell")
	button.icon = button:CreateTexture(nil, "ARTWORK")
	button.icon:SetAllPoints()
	button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
	button.count = button:CreateFontString(nil, "OVERLAY", "NumberFontNormal")
	button.count:SetPoint("BOTTOMRIGHT", -1, 1)
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
		GameTooltip:SetText(self.spell)
		if #self.missing > 0 then
			GameTooltip:AddLine("Missing on: " .. table.concat(self.missing, ", "), 1, 1, 1, true)
		end
		if #self.expiring > 0 then
			GameTooltip:AddLine("Running out on: " .. table.concat(self.expiring, ", "), 1, 0.82, 0, true)
		end
		GameTooltip:AddLine("Click to cast on " .. self.targetName .. ".", 0.6, 0.8, 1)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", GameTooltip_Hide)
	buttons[index] = button
	return button
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

local function Knows(spell)
	local info = C_Spell.GetSpellInfo(spell)
	return info ~= nil and C_SpellBook.IsSpellKnown(info.spellID)
end
ns.Knows = Knows

-- Seconds left on a unit's buff (the longest of its versions): nil when it is missing, math.huge when it doesn't
-- run out or the game keeps the time secret.
local function TimeLeft(unit, buff)
	local left
	for _, name in ipairs({ buff.spell, unpack(buff.also or {}) }) do
		local aura = C_UnitAuras.GetAuraDataBySpellName(unit, name, "HELPFUL")
		if aura then
			local expires = aura.expirationTime
			local seconds = (issecretvalue(expires) or expires == 0) and math.huge or expires - GetTime()
			left = math.max(left or 0, seconds)
		end
	end
	return left
end

-- Who needs a buff (missing it, or with under REBUFF_SECONDS left), and the unit a click should cast on: missing
-- before running out, in range before out of range.
local function Needs(buff, units)
	local missing, expiring, target, targetName, targetInRange, targetRank = {}, {}, nil, nil, false, -1
	for _, unit in ipairs(buff.selfOnly and { "player" } or units) do
		if UnitExists(unit) and UnitIsConnected(unit) and not UnitIsDeadOrGhost(unit) and UnitIsVisible(unit) then
			local left = TimeLeft(unit, buff)
			if not left or left < REBUFF_SECONDS then
				local name = UnitName(unit)
				if left then
					expiring[#expiring + 1] = format("%s (%d:%02d)", name, left / 60, left % 60)
				else
					missing[#missing + 1] = name
				end
				local inRange = UnitIsUnit(unit, "player") or C_Spell.IsSpellInRange(buff.spell, unit) == true
				local rank = (inRange and 2 or 0) + (left and 0 or 1)
				if rank > targetRank then
					target, targetName, targetInRange, targetRank = unit, name, inRange, rank
				end
			end
		end
	end
	return missing, expiring, target, targetName, targetInRange
end

local function Update()
	if InCombatLockdown() or not ns.Get("buffCheck") then
		bar:Hide()
		return
	end
	local units = GroupUnits()
	local shown = 0
	for _, buff in ipairs(BUFFS) do
		if Knows(buff.spell) then
			local missing, expiring, target, targetName, inRange = Needs(buff, units)
			if target then
				shown = shown + 1
				local button = GetButton(shown)
				button.spell, button.missing, button.expiring, button.targetName =
					buff.spell, missing, expiring, targetName
				button:SetAttribute("spell", buff.spell)
				button:SetAttribute("unit", target)
				button.icon:SetTexture(C_Spell.GetSpellTexture(buff.spell))
				local count = #missing + #expiring
				button.count:SetText(count > 1 and count or "")
				button:SetAlpha(inRange and 1 or 0.5)
				button:Show()
			end
		end
	end
	for i = shown + 1, #buttons do
		buttons[i]:Hide()
	end
	bar:SetShown(shown > 0)
end

local reportedError = false

local function SafeUpdate()
	local ok, err = pcall(Update)
	if not ok then
		bar:Hide()
		if not reportedError then
			reportedError = true
			print("Holy Moly buff check error: " .. tostring(err))
		end
	end
end

-- UNIT_AURA fires very often in a group, so updates are gathered into one per short moment.
local queued = false
local function QueueUpdate()
	if not queued then
		queued = true
		C_Timer.After(0.3, function()
			queued = false
			SafeUpdate()
		end)
	end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("GROUP_ROSTER_UPDATE")
frame:RegisterEvent("SPELLS_CHANGED")
frame:RegisterEvent("UNIT_AURA")
frame:RegisterEvent("PLAYER_REGEN_DISABLED")
frame:RegisterEvent("PLAYER_REGEN_ENABLED")
frame:SetScript("OnEvent", function(_, event)
	if event == "PLAYER_REGEN_DISABLED" then
		bar:Hide()
		return
	end
	if event == "PLAYER_LOGIN" then
		-- Range, visibility and time left change without events; check them every few seconds.
		C_Timer.NewTicker(CHECK_SECONDS, QueueUpdate)
	end
	QueueUpdate()
end)
ns.OnSettingChanged("buffCheck", QueueUpdate)
