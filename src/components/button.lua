local Button = {}
Button.__index = Button

function Button.new(window, tab, section, title, callback)
    assert(window, "Button.new: window is nil")
    assert(tab, "Button.new: tab is nil")
    assert(section, "Button.new: section is nil")
    assert(title, "Button.new: title is nil")
    assert(callback, "Button.new: callback is nil")

    local self = setmetatable({}, Button)

    local Button = Instance.new("Frame")
    Button.Name = "Button"
    Button.Parent = section.Layout
    Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Button.BackgroundTransparency = 1.000
    Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Button.BorderSizePixel = 0
    Button.LayoutOrder = 2
    Button.Position = UDim2.new(0, 52, 0, 221)
    Button.Size = UDim2.new(0, 348, 0, 71)

    local ButtonFrame = Instance.new("Frame")
    ButtonFrame.Name = "ButtonFrame"
    ButtonFrame.Parent = Button
    ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ButtonFrame.BorderSizePixel = 0
    ButtonFrame.Position = UDim2.new(0.169330046, 0, 0.116766781, 0)
    ButtonFrame.Size = UDim2.new(-0.0790688768, 218, 0.675029159, 0)

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(167, 167, 167)
    UIStroke.Parent = ButtonFrame
    UIStroke.Thickness = 1
    
    local TextButton = Instance.new("TextButton")
    TextButton.Name = "TextButton"
    TextButton.Text = ""
    TextButton.Parent = ButtonFrame
    TextButton.BackgroundTransparency = 1
    TextButton.Size = UDim2.new(1, 0, 1, 0)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = ButtonFrame

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = ButtonFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.140950054, 0, 0.187648401, 0)
    TextLabel.Size = UDim2.new(0.672972083, 0, 0.607843161, 0)
    TextLabel.Font = Enum.Font.Cartoon
    TextLabel.Text = "Button"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true

    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(34, 34, 34))}
    UIGradient.Rotation = 90
    UIGradient.Parent = ButtonFrame


    TextButton.MouseButton1Click:Connect(function()
        callback()
    end)

    

    self.Window = window
    self.Tab = tab
    self.Name = title
    self.Section = section

    return self
    
end

return Button