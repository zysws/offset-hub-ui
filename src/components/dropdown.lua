local Dropdown = {}
Dropdown.__index = Dropdown

local Shared = __require("shared")
local Icons = Shared.Icons

function Dropdown.new(window, tab, section, title, options, callback)
    local self = setmetatable({}, Dropdown)

    local DropDown = Instance.new("Frame")
    DropDown.Name = "DropDown"
    DropDown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    DropDown.BackgroundTransparency = 1.000
    DropDown.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DropDown.BorderSizePixel = 0
    DropDown.Size = UDim2.new(0, 347, 0, 80)

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = DropDown
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 0, 0, 25)
    TextLabel.Size = UDim2.new(0, 156, 0, 29)
    TextLabel.Font = Enum.Font.Cartoon
    TextLabel.Text = title
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true

    local DropdownContent = Instance.new("Frame")
    DropdownContent.Name = "DropdownContent"
    DropdownContent.Parent = DropDown
    DropdownContent.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    DropdownContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DropdownContent.BorderSizePixel = 0
    DropdownContent.Position = UDim2.new(0, 171, 0, 52)
    DropdownContent.Size = UDim2.new(0, 142, 0, 124)

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = DropdownContent

    local Frame = Instance.new("ScrollingFrame")
    Frame.Name = "Frame"
    Frame.Parent = DropdownContent
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 5, 0, 13)
    Frame.Selectable = false
    Frame.Size = UDim2.new(0, 133, 0.87, 0)
    Frame.ScrollBarThickness = 0
    Frame.CanvasSize = UDim2.new(0, 0, 0, 0)
    Frame.AutomaticCanvasSize = Enum.AutomaticSize.Y

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = Frame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.05, 0)

    local DropdownTop = Instance.new("Frame")
    DropdownTop.Name = "DropdownTop"
    DropdownTop.Parent = DropDown
    DropdownTop.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    DropdownTop.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DropdownTop.BorderSizePixel = 0
    DropdownTop.Position = UDim2.new(0, 171, 0, 25)
    DropdownTop.Size = UDim2.new(0, 142, 0, 30)

    local OpenCloseButton = Instance.new("TextButton")
    OpenCloseButton.Name = "OpenCloseButton"
    OpenCloseButton.Parent = DropdownTop
    OpenCloseButton.BackgroundTransparency = 1
    OpenCloseButton.Size = UDim2.new(1, 0, 1, 0)
    OpenCloseButton.Text = ""

    local UICorner_3 = Instance.new("UICorner")
    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Parent = DropdownTop

    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Parent = DropdownTop
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.825663805, 0, 0.128204346, 0)
    ImageLabel.Size = UDim2.new(0.150481597, 0, 0.720713615, 0)
    ImageLabel.Image = "rbxassetid://10709767827"

    local TItle = Instance.new("TextLabel")
    TItle.Name = "TItle"
    TItle.Parent = DropdownTop
    TItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TItle.BackgroundTransparency = 1.000
    TItle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TItle.BorderSizePixel = 0
    TItle.Position = UDim2.new(0.107131481, 0, 0.0739013627, 0)
    TItle.Size = UDim2.new(0.718532443, 0, 0.849175096, 0)
    TItle.Font = Enum.Font.Cartoon
    TItle.Text = "Options"
    TItle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TItle.TextScaled = true
    TItle.TextSize = 14.000
    TItle.TextWrapped = true

    DropdownContent.Visible = false

    local asset

    OpenCloseButton.MouseButton1Click:Connect(function()
        if DropdownContent.Visible == false then
            DropdownContent.Visible = true
            DropDown.Size = UDim2.new(0, 347, 0, 200)
            asset = Icons.GetAsset("arrow-up", 48)
            if asset then
                ImageLabel.Image = asset.Url
                ImageLabel.ImageRectOffset = asset.ImageRectOffset
                ImageLabel.ImageRectSize = asset.ImageRectSize
            end
        else
            DropdownContent.Visible = false
            DropDown.Size = UDim2.new(0, 347, 0, 80)
            asset = Icons.GetAsset("arrow-down", 48)
            if asset then
                ImageLabel.Image = asset.Url
                ImageLabel.ImageRectOffset = asset.ImageRectOffset
                ImageLabel.ImageRectSize = asset.ImageRectSize
            end
        end
    end)

    for i, option in pairs(options) do
        local Element = Instance.new("Frame")
        Element.Name = "Element"
        Element.Parent = Frame
        Element.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        Element.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Element.BorderSizePixel = 0
        Element.Size = UDim2.new(1, 0, 0, 30)

        local TextLabel_2 = Instance.new("TextLabel")
        TextLabel_2.Parent = Element
        TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_2.BackgroundTransparency = 1.000
        TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_2.BorderSizePixel = 0
        TextLabel_2.Size = UDim2.new(0.999999642, 0, 0.999999881, 0)
        TextLabel_2.Font = Enum.Font.SourceSans
        TextLabel_2.Text = option
        TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_2.TextScaled = true
        TextLabel_2.TextSize = 14.000
        TextLabel_2.TextWrapped = true

        local Button = Instance.new("TextButton")
        Button.Name = "Button"
        Button.Parent = Element
        Button.BackgroundTransparency = 1
        Button.Size = UDim2.new(1, 0, 1, 0)
        Button.Text = ""

        local UICorner_2 = Instance.new("UICorner")
        UICorner_2.CornerRadius = UDim.new(0, 4)
        UICorner_2.Parent = Element

        Button.MouseButton1Click:Connect(function()
            Element.BackgroundColor3 = Color3.fromRGB(37, 37, 37)

            for _, v in pairs(Frame:GetChildren()) do
                if v:IsA("Frame") and v.Name == "Element" and v ~= Element then
                    v.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
                end
            end


            TItle.Text = option
            callback(option)
        end)
    end



    DropDown.Parent = section.Layout

    self.Window = window
    self.Tab = tab
    self.Section = section
    self.Title = title or "Dropdown"
    self.Options = options or {}
    self.Callback = callback

    -- Initialization code for the dropdown component goes here

    return self
end

return Dropdown