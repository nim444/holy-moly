-- Minimap button: Holy Moly's logo on the minimap's edge. A click shows or hides the box, a right-click opens the
-- settings, and dragging moves it around the minimap (the angle is saved).

local _, ns = ...

local DEFAULT_ANGLE = 225 -- degrees, counterclockwise from the right: bottom left

local button = CreateFrame("Button", "HolyMolyMinimapButton", Minimap)
button:SetSize(31, 31)
button:SetFrameStrata("MEDIUM")
button:SetFrameLevel(8)
button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
button:RegisterForDrag("LeftButton")
button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

-- The round frame other minimap buttons use.
local background = button:CreateTexture(nil, "BACKGROUND")
background:SetSize(24, 24)
background:SetPoint("CENTER")
background:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
local icon = button:CreateTexture(nil, "ARTWORK")
icon:SetSize(20, 20)
icon:SetPoint("CENTER")
icon:SetTexture("Interface\\AddOns\\HolyMoly\\Media\\Icon")
local border = button:CreateTexture(nil, "OVERLAY")
border:SetSize(50, 50)
border:SetPoint("TOPLEFT")
border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")

local function UpdatePosition()
	local angle = math.rad(HolyMolyDB.minimapAngle or DEFAULT_ANGLE)
	local radius = Minimap:GetWidth() / 2 + 5
	button:ClearAllPoints()
	button:SetPoint("CENTER", Minimap, "CENTER", math.cos(angle) * radius, math.sin(angle) * radius)
end

-- While dragging, the button follows the cursor's angle from the minimap's center.
local function FollowCursor()
	local centerX, centerY = Minimap:GetCenter()
	local cursorX, cursorY = GetCursorPosition()
	local scale = Minimap:GetEffectiveScale()
	HolyMolyDB.minimapAngle = math.deg(math.atan2(cursorY / scale - centerY, cursorX / scale - centerX))
	UpdatePosition()
end

button:SetScript("OnDragStart", function(self)
	self:SetScript("OnUpdate", FollowCursor)
	GameTooltip:Hide()
end)
button:SetScript("OnDragStop", function(self)
	self:SetScript("OnUpdate", nil)
end)
button:SetScript("OnClick", function(_, mouseButton)
	HolyMoly_OnAddonCompartmentClick(nil, mouseButton)
end)
button:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_LEFT")
	GameTooltip:SetText("Holy Moly")
	GameTooltip:AddLine("Click: show or hide the box", 1, 1, 1)
	GameTooltip:AddLine("Right-click: settings", 1, 1, 1)
	GameTooltip:AddLine("Drag: move this button", 0.6, 0.8, 1)
	GameTooltip:Show()
end)
button:SetScript("OnLeave", GameTooltip_Hide)

ns.OnSettingChanged("minimapButton", function(shown)
	button:SetShown(shown)
end)

button:RegisterEvent("PLAYER_LOGIN")
button:SetScript("OnEvent", UpdatePosition)
