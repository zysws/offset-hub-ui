local Tab = {}
Tab.__index = Tab

local Shared = __require("shared")
local Section = __require("components.section")
local Icons = Shared.Icons


function Tab.new(window, name, icon)
    assert(window, "Tab.new: window is nil")
    assert(name, "Tab.new: name is nil")

    local self = setmetatable({}, Tab)

    -- ===== TAB FRAME =====
    local TabFrame = Instance.new("Frame")
    TabFrame.Name = "Tab"
    TabFrame.Parent = window.TabsContainer
    TabFrame.BackgroundColor3 = Color3.fromRGB(126, 126, 126)
    TabFrame.BorderSizePixel = 0
    TabFrame.Size = UDim2.new(0, 116, 0, 23)

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 5)
    Corner.Parent = TabFrame


    local asset
    if icon then
        asset = Icons.GetAsset(icon, 48)
    end

    local Icon = Instance.new("ImageLabel")
    Icon.BackgroundTransparency = 1
    Icon.Position = UDim2.new(0.07, 0, 0, 0)
    Icon.Size = UDim2.new(0.2, 0, 1, 0)

    if asset then
        Icon.Image = asset.Url
        Icon.ImageRectOffset = asset.ImageRectOffset
        Icon.ImageRectSize = asset.ImageRectSize
    end

    Icon.Parent = TabFrame


    -- Text
    local Label = Instance.new("TextLabel")
    Label.BackgroundTransparency = 1
    Label.Position = UDim2.new(0.32, 0, 0, 0)
    Label.Size = UDim2.new(0.63, 0, 1, 0)
    Label.Font = Enum.Font.Cartoon
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextScaled = true
    Label.Parent = TabFrame

    -- Click catcher
    local Button = Instance.new("TextButton")
    Button.BackgroundTransparency = 1
    Button.Size = UDim2.new(1, 0, 1, 0)
    Button.Text = ""
    Button.Parent = TabFrame

    local List = Instance.new("Frame")
    List.Name = "Tab_"..name
    List.Parent = window.SectionsContainer
    List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    List.BackgroundTransparency = 1.000
    List.BorderColor3 = Color3.fromRGB(0, 0, 0)
    List.BorderSizePixel = 0
    List.Position = UDim2.new(0.0100286528, 0, 0.0423727706, 0)
    List.Size = UDim2.new(0, 683, 0, 346)
    List.Visible = false

    local LeftRow = Instance.new("Frame")
    LeftRow.Name = "LeftRow"
    LeftRow.Parent = List
    LeftRow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LeftRow.BackgroundTransparency = 1.000
    LeftRow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LeftRow.BorderSizePixel = 0
    LeftRow.Size = UDim2.new(0.5, 0, 2.76013017, 0)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = LeftRow
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.00999999978, 0)

    local RightRow = Instance.new("Frame")
    RightRow.Name = "RightRow"
    RightRow.Parent = List
    RightRow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RightRow.BackgroundTransparency = 1.000
    RightRow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RightRow.BorderSizePixel = 0
    RightRow.Position = UDim2.new(0.5, 0, 0, 0)
    RightRow.Size = UDim2.new(0.5, 0, 2.74277449, 0)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = RightRow
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.00999999978, 0)

    Button.MouseButton1Click:Connect(function()
        for _, tabFrame in ipairs(window.TabsContainer:GetChildren()) do
            if tabFrame:IsA("Frame") then
                tabFrame.BackgroundColor3 = Color3.fromRGB(126, 126, 126)
            end
        end

        TabFrame.BackgroundColor3 = Color3.fromRGB(82, 82, 82)

        for _, list in ipairs(window.SectionsContainer:GetChildren()) do
            if list:IsA("Frame") then
                list.Visible = false
            end
        end

        List.Visible = true
    end)

    -- Store refs
    self.Frame = TabFrame
    self.Button = Button
    self.Window = window
    self.Name = name

    function Tab:CreateSection(name)
        return Section.new(self.Window, self, name)
    end

    


    return self
end

return Tab
