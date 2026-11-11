-- Settings: the saved variables, their defaults, and Holy Moly's page in Blizzard's Options > AddOns panel.
--
-- Loads first. The other files read values with ns.Get(key) and react to changes with ns.OnSettingChanged(key, fn).
-- Everything is ready on ADDON_LOADED, before any PLAYER_LOGIN handler runs.

local addonName, ns = ...

local DEFAULTS = {
	lock = false,
	scale = 1,
	minimapButton = true,
	reportChannel = "YELL", -- "YELL", "SAY", or "GROUP" (party, raid or instance chat)
	keptUp = true,
	timers = true,
	dispels = true,
	buffCheck = true,
	healGrid = true,
	healGridScale = 1,
	healGridWidth = 120, -- one heal button's width; a party's tank row spans two
	healGridPercent = 30,
	healLeft = "Flash Heal", -- a spell name, "BIGGEST" (the biggest heal known) or "TARGET"
	healShiftLeft = "Lesser Heal",
	healMiddle = "Renew",
	healShiftMiddle = "Power Word: Shield",
	healRight = "Penance", -- the biggest heal until it is learned
	healShiftRight = "BIGGEST",
	lowMana = true,
	lowManaPercent = 20,
	history = true,
}

-- Spells the heal buttons' clicks can cast, offered in the dropdowns when the player knows them.
local CLICK_SPELLS = {
	"Flash Heal", "Greater Heal", "Heal", "Lesser Heal", "Renew", "Power Word: Shield", "Prayer of Mending",
	"Binding Heal", "Penance", "Circle of Healing", "Dispel Magic", "Purify", "Cure Disease", "Abolish Disease",
	"Resurrection",
}

local listeners = {}

-- The click defaults before 11 Nov 2026 (the second set). A saved click still on its old default moves to the new
-- one; a click someone picked themselves stays. Runs once, before the panel registers the settings.
local OLD_CLICK_DEFAULTS = {
	healRight = "BIGGEST",
	healShiftLeft = "Power Word: Shield",
	healShiftRight = "Dispel Magic",
	healShiftMiddle = "Cure Disease",
}
local CLICK_DEFAULTS_VERSION = 2

local function MigrateClickDefaults()
	if (HolyMolyDB.clickDefaults or 1) >= CLICK_DEFAULTS_VERSION then
		return
	end
	local settings = HolyMolyDB.settings
	for key, old in pairs(OLD_CLICK_DEFAULTS) do
		if settings[key] == old then
			settings[key] = nil
		end
	end
	HolyMolyDB.clickDefaults = CLICK_DEFAULTS_VERSION
end

function ns.Get(key)
	local settings = HolyMolyDB and HolyMolyDB.settings
	if settings and settings[key] ~= nil then
		return settings[key]
	end
	return DEFAULTS[key]
end

-- fn(value) runs when the setting changes in the panel, and once at login with the saved value.
function ns.OnSettingChanged(key, fn)
	listeners[key] = listeners[key] or {}
	table.insert(listeners[key], fn)
end

local function Notify(key, value)
	for _, fn in ipairs(listeners[key] or {}) do
		-- One broken listener must not stop the others (this also runs at load, before the player exists).
		local ok, err = pcall(fn, value)
		if not ok then
			print(("Holy Moly: applying the %s setting failed: %s"):format(key, tostring(err)))
		end
	end
end

local category, layout

function ns.OpenSettings()
	if category then
		Settings.OpenToCategory(category:GetID())
	end
end

local function AddSetting(key, varType, label, tooltip, makeControl)
	local setting = Settings.RegisterAddOnSetting(category, "HOLYMOLY_" .. key:upper(), key, HolyMolyDB.settings,
		varType, label, DEFAULTS[key])
	setting:SetValueChangedCallback(function(_, value)
		Notify(key, value)
	end)
	makeControl(setting, tooltip)
end

local function Checkbox(key, label, tooltip)
	AddSetting(key, Settings.VarType.Boolean, label, tooltip, function(setting)
		Settings.CreateCheckbox(category, setting, tooltip)
	end)
end

local function Slider(key, label, tooltip, minValue, maxValue, step, format)
	AddSetting(key, Settings.VarType.Number, label, tooltip, function(setting)
		local options = Settings.CreateSliderOptions(minValue, maxValue, step)
		options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Right, format)
		Settings.CreateSlider(category, setting, options, tooltip)
	end)
end

-- choices: a list of { value, label }, or a function returning one (called each time the dropdown opens).
local function Dropdown(key, label, tooltip, choices)
	AddSetting(key, Settings.VarType.String, label, tooltip, function(setting)
		local function GetOptions()
			local container = Settings.CreateControlTextContainer()
			for _, choice in ipairs(type(choices) == "function" and choices() or choices) do
				container:Add(choice[1], choice[2])
			end
			return container:GetData()
		end
		Settings.CreateDropdown(category, setting, GetOptions, tooltip)
	end)
end

-- The heal buttons' click choices: the biggest heal, targeting, and the spells from CLICK_SPELLS the player knows
-- (plus the saved one, so the dropdown can always show it).
local function ClickChoices(key)
	return function()
		local choices = { { "BIGGEST", "Biggest heal you know" }, { "TARGET", "Target them" } }
		for _, spell in ipairs(CLICK_SPELLS) do
			if ns.Knows(spell) then
				choices[#choices + 1] = { spell, spell }
			elseif spell == ns.Get(key) then
				choices[#choices + 1] = { spell, spell .. " (not learned yet)" }
			end
		end
		return choices
	end
end

local function Header(name)
	layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(name))
end

local function Percent(value)
	return ("%d%%"):format(value)
end

local function RegisterPanel()
	category, layout = Settings.RegisterVerticalLayoutCategory("Holy Moly")

	Header("Box")
	Checkbox("lock", "Lock the box", "Stops the box and the heal buttons from being dragged.")
	Slider("scale", "Size", "Makes the box and everything under it bigger or smaller. The heal buttons have their own size.", 0.6, 1.6,
		0.05, function(value) return Percent(value * 100 + 0.5) end)
	Checkbox("history", "Recent fights", "Your last fights in the box's tooltip, with a comparison to the one before.")
	Checkbox("minimapButton", "Minimap button", "Holy Moly's button on the minimap: a click shows or hides the box, a right-click opens these settings. Drag it around the minimap.")

	Header("Reports")
	Dropdown("reportChannel", "Speaker button sends to", "Where your totals go when you click the speaker button.", {
		{ "YELL", "Yell" },
		{ "SAY", "Say" },
		{ "GROUP", "Party, raid or instance chat" },
	})
	Checkbox("keptUp", "Name who you kept up", "Adds the three others you healed most to the report, as [Name].")

	Header("Heal buttons")
	Checkbox("healGrid", "Heal buttons", "A button for each party or raid member that lights up red below the threshold. Click it to heal them, also in combat.")
	Slider("healGridScale", "Size", "Makes the heal buttons bigger or smaller, apart from the box.", 0.6, 2, 0.05,
		function(value) return Percent(value * 100 + 0.5) end)
	Slider("healGridWidth", "Width", "How wide each heal button is, for longer names or a narrower grid. In a party the tank's button spans two. A change made in combat waits for the fight to end.",
		80, 260, 10, function(value) return ("%d"):format(value) end)
	Slider("healGridPercent", "Low-health threshold", "The health percent where a heal button lights up.", 10, 60, 5,
		Percent)
	Dropdown("healLeft", "Left click", "What a left click on a heal button casts.", ClickChoices("healLeft"))
	Dropdown("healShiftLeft", "Shift + left click", "What a left click with Shift held casts on a heal button.",
		ClickChoices("healShiftLeft"))
	Dropdown("healMiddle", "Middle click", "What a middle click on a heal button casts.", ClickChoices("healMiddle"))
	Dropdown("healShiftMiddle", "Shift + middle click", "What a middle click with Shift held casts on a heal button.",
		ClickChoices("healShiftMiddle"))
	Dropdown("healRight", "Right click", "What a right click on a heal button casts.", ClickChoices("healRight"))
	Dropdown("healShiftRight", "Shift + right click", "What a right click with Shift held casts on a heal button.",
		ClickChoices("healShiftRight"))

	Header("Timers and buffs")
	Checkbox("timers", "HoT and shield timers", "The panel under the box with your heals over time and shields on each person.")
	Checkbox("dispels", "Show debuffs you can dispel", "Adds debuffs you can remove to the timers panel, with a red border.")
	Checkbox("buffCheck", "Buff check", "Out of combat, buttons for Priest buffs someone in the group is missing or has under 5 minutes left on.")

	Header("Mana")
	Checkbox("lowMana", "Low-mana warning", "The mana bar glows red below the threshold, also in combat.")
	Slider("lowManaPercent", "Low-mana threshold", "The mana percent where the warning starts.", 10, 50, 5, Percent)

	Settings.RegisterAddOnCategory(category)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, _, loaded)
	if loaded ~= addonName then
		return
	end
	self:UnregisterEvent("ADDON_LOADED")
	HolyMolyDB = HolyMolyDB or {}
	HolyMolyDB.settings = HolyMolyDB.settings or {}
	HolyMolyDB.healed = HolyMolyDB.healed or {}
	HolyMolyDB.history = HolyMolyDB.history or {}
	HolyMolyDB.tanks = HolyMolyDB.tanks or {}
	MigrateClickDefaults()
	local ok, err = pcall(RegisterPanel)
	if not ok then
		print("Holy Moly: the settings page could not be added: " .. tostring(err))
	end
	for key in pairs(DEFAULTS) do
		Notify(key, ns.Get(key))
	end
end)
