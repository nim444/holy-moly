-- Settings: the saved variables, their defaults, and Holy Moly's page in Blizzard's Options > AddOns panel.
--
-- Loads first. The other files read values with ns.Get(key) and react to changes with ns.OnSettingChanged(key, fn).
-- Everything is ready on ADDON_LOADED, before any PLAYER_LOGIN handler runs.

local addonName, ns = ...

local DEFAULTS = {
	lock = false,
	scale = 1,
	reportChannel = "YELL", -- "YELL" (then /say), "SAY", or "GROUP" (party, raid or instance chat)
	keptUp = true,
	timers = true,
	dispels = true,
	buffCheck = true,
	healGrid = true,
	healGridPercent = 30,
	lowMana = true,
	lowManaPercent = 20,
	history = true,
}

local listeners = {}

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

local category

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

local function Dropdown(key, label, tooltip, choices)
	AddSetting(key, Settings.VarType.String, label, tooltip, function(setting)
		local function GetOptions()
			local container = Settings.CreateControlTextContainer()
			for _, choice in ipairs(choices) do
				container:Add(choice[1], choice[2])
			end
			return container:GetData()
		end
		Settings.CreateDropdown(category, setting, GetOptions, tooltip)
	end)
end

local function RegisterPanel()
	category = Settings.RegisterVerticalLayoutCategory("Holy Moly")

	Checkbox("lock", "Lock the box", "Stops the box and the heal buttons from being dragged.")
	Slider("scale", "Box size", "Makes the box and everything under it bigger or smaller.", 0.6, 1.6, 0.05,
		function(value) return ("%d%%"):format(value * 100 + 0.5) end)

	Dropdown("reportChannel", "Speaker button sends to", "Where your totals go when you click the speaker button.", {
		{ "YELL", "Yell, then say who you kept up" },
		{ "SAY", "Say" },
		{ "GROUP", "Party, raid or instance chat" },
	})
	Checkbox("keptUp", "Name who you kept up", "After the totals, a second line with the three others you healed most.")

	Checkbox("timers", "HoT and shield timers", "The panel under the box with your heals over time and shields on each person.")
	Checkbox("dispels", "Show debuffs you can dispel", "Adds debuffs you can remove to the timers panel, with a red border.")
	Checkbox("buffCheck", "Buff check", "Out of combat, buttons for Priest buffs someone in the group is missing or has under 5 minutes left on.")
	Checkbox("healGrid", "Heal buttons", "A button for each party or raid member that lights up red below the threshold. Left click casts Flash Heal, right click a bigger heal, middle click Renew. Works in combat.")
	Slider("healGridPercent", "Low-health threshold", "The health percent where a heal button lights up.", 10, 60, 5,
		function(value) return ("%d%%"):format(value) end)
	Checkbox("lowMana", "Low-mana warning", "The mana bar glows red below the threshold, also in combat.")
	Slider("lowManaPercent", "Low-mana threshold", "The mana percent where the warning starts.", 10, 50, 5,
		function(value) return ("%d%%"):format(value) end)
	Checkbox("history", "Recent fights", "Your last fights in the box's tooltip, with a comparison to the one before.")

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
	local ok, err = pcall(RegisterPanel)
	if not ok then
		print("Holy Moly: the settings page could not be added: " .. tostring(err))
	end
	for key in pairs(DEFAULTS) do
		Notify(key, ns.Get(key))
	end
end)
