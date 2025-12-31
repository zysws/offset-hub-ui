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
