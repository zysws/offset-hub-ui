local Checkbox = {}
Checkbox.__index = Checkbox

local Shared = __require("shared")


function Checkbox.new(window, tab, section, title, default)
    assert(window, "Checkbox.new: window is nil")
    assert(tab, "Checkbox.new: tab is nil")
    assert(section, "Checkbox.new: section is nil")
    assert(title, "Checkbox.new: title is nil")

    print("creating checkbox: ", title)

    local self = setmetatable({}, Checkbox)
    local api = Shared.API

    self.Settings = {
        Title = title,
        Value = default or false
    }

    local Toggle = Instance.new("Frame")
    Toggle.Name = "Toggle"
    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.BackgroundTransparency = 1.000
    Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Toggle.BorderSizePixel = 0
    Toggle.Position = UDim2.new(0, 0, 0, 14)
    Toggle.Size = UDim2.new(0, 336, 0, 56)

    local CheckboxIcon = Instance.new("ImageLabel")
    CheckboxIcon.Name = "CheckboxIcon"
    CheckboxIcon.Parent = Toggle
    CheckboxIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CheckboxIcon.BackgroundTransparency = 1.000
    CheckboxIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CheckboxIcon.BorderSizePixel = 0
    CheckboxIcon.Position = UDim2.new(0, 13, 0, 10)
    CheckboxIcon.Size = UDim2.new(0, 32, 0, 34)
    CheckboxIcon.Image = "rbxassetid://139434326289840"

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = CheckboxIcon

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = Toggle
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.171153232, 0, 0.208923593, 0)
    Title.Size = UDim2.new(0.548053205, 0, 0.536189139, 0)
    Title.Font = Enum.Font.Cartoon
    Title.Text = "Enable Aimbot"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 25.000
    Title.TextWrapped = true

    local textButton = Instance.new("TextButton")
    textButton.Name = "Button"
    textButton.Parent = Toggle
    textButton.BackgroundTransparency = 1
    textButton.Size = UDim2.new(1, 0, 1, 0)
    textButton.Text = ""

    textButton.MouseButton1Click:Connect(function()
        self.Settings.Value = not self.Settings.Value

        if self.Settings.Value then
            CheckboxIcon.Image = "rbxassetid://1264515756"
        else
            CheckboxIcon.Image = "rbxassetid://1264513374"
        end
    end)

    self.Window = window
    self.Tab = tab
    self.Name = title
    self.Section = section

    Toggle.Parent = section.Layout

    return self
end

return Checkbox