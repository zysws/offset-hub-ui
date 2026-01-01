local Slider = {}
Slider.__index = Slider

function Slider.new(window, tab, section, title, min, max, default, increment)
	assert(window, "Slider.new: window is nil")
	assert(tab, "Slider.new: tab is nil")
	assert(section, "Slider.new: section is nil")

	local self = setmetatable({}, Slider)

	-- UI
	local SliderFrame = Instance.new("Frame")
	SliderFrame.Name = "Slider"
	SliderFrame.BackgroundTransparency = 1
	SliderFrame.Size = UDim2.new(1, 0, 0, 80)
	SliderFrame.ZIndex = 5

	local Title = Instance.new("TextLabel")
	Title.Parent = SliderFrame
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(1, 0, 0, 20)
	Title.Font = Enum.Font.Cartoon
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true

	local SliderLine = Instance.new("Frame")
	SliderLine.Parent = SliderFrame
	SliderLine.AnchorPoint = Vector2.new(0, 0.5)
	SliderLine.Position = UDim2.new(0.03, 0, 0.55, 0)
	SliderLine.Size = UDim2.new(0, 307, 0, 7)
	SliderLine.BackgroundColor3 = Color3.fromRGB(207, 207, 207)
	SliderLine.BorderSizePixel = 0
	Instance.new("UICorner", SliderLine).CornerRadius = UDim.new(0, 16)

	local Knob = Instance.new("ImageButton")
	Knob.Parent = SliderFrame
	Knob.AnchorPoint = Vector2.new(0.5, 0.5)
	Knob.Size = UDim2.new(0, 22, 0, 22)
	Knob.Position = UDim2.new(0, 11, 0, 44)
	Knob.BackgroundTransparency = 1
	Knob.Image = "rbxassetid://106354632382801"
	Knob.AutoButtonColor = false
	Knob.ZIndex = 10

	local Number = Instance.new("TextLabel")
	Number.Parent = SliderFrame
	Number.BackgroundTransparency = 1
	Number.Position = UDim2.new(0, 0, 0.72, 0)
	Number.Size = UDim2.new(1, 0, 0, 20)
	Number.Font = Enum.Font.Cartoon
	Number.TextColor3 = Color3.fromRGB(218, 218, 218)
	Number.TextScaled = true

	SliderFrame.Parent = section.Layout

	-- Services
	local UIS = game:GetService("UserInputService")

	-- Values
	local MIN = min
	local MAX = max
	local DEFAULT = default
	local INC = increment

	local dragging = false
	local dragOffsetX = 0

	-- Helpers
	local function getCenterX()
		return Knob.AbsolutePosition.X + Knob.AbsoluteSize.X / 2
	end

	local function applyIncrement(value)
		if not INC or INC <= 0 then
			return value
		end
		return math.clamp(
			math.floor(value / INC + 0.5) * INC,
			MIN,
			MAX
		)
	end

	local function decimalsFromIncrement()
		if not INC then return 0 end
		local d = tostring(INC):match("%.(%d+)")
		return d and #d or 0
	end

	local DECIMALS = decimalsFromIncrement()

	-- Update (NO STEPPING)
	local function update(mouseX)
		local barLeft = SliderLine.AbsolutePosition.X
		local barRight = barLeft + SliderLine.AbsoluteSize.X

		local centerX = math.clamp(
			mouseX - dragOffsetX,
			barLeft,
			barRight
		)

		-- smooth knob movement
		local localCenterX = centerX - SliderFrame.AbsolutePosition.X
		Knob.Position = UDim2.new(0, localCenterX, Knob.Position.Y.Scale, Knob.Position.Y.Offset)

		-- value calculation
		local alpha = (centerX - barLeft) / (barRight - barLeft)
		local rawValue = MIN + alpha * (MAX - MIN)
		local value = applyIncrement(rawValue)

		Number.Text = string.format("%." .. DECIMALS .. "f", value)
		self.Settings.Value = value
	end

	-- Input
	Knob.MouseButton1Down:Connect(function()
		dragging = true
		dragOffsetX = UIS:GetMouseLocation().X - getCenterX()
	end)

	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			update(UIS:GetMouseLocation().X)
		end
	end)

	-- Initialize default
	do
		local alpha = (DEFAULT - MIN) / (MAX - MIN)
		local barLeft = SliderLine.AbsolutePosition.X
		local barRight = barLeft + SliderLine.AbsoluteSize.X
		local centerX = barLeft + alpha * (barRight - barLeft)
		local localCenterX = centerX - SliderFrame.AbsolutePosition.X

		Knob.Position = UDim2.new(0, localCenterX, Knob.Position.Y.Scale, Knob.Position.Y.Offset)
		Number.Text = string.format("%." .. DECIMALS .. "f", DEFAULT)
	end

	self.Settings = {
		Title = title,
		Min = MIN,
		Max = MAX,
		Value = DEFAULT,
		Increment = INC
	}

	self.Window = window
	self.Tab = tab
	self.Section = section
	self.Name = title

	return self
end

return Slider
