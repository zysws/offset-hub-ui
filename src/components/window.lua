local Window = {}
Window.__index = Window

function Window.new(config)
    config = config or {}
    local self = setmetatable({}, Window)

    local title = config.Title or "UI Library"

    -- ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "offset-hub"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game.CoreGui

    -- Main
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.226, 0, 0.298, 0)
    MainFrame.Size = UDim2.new(0, 698, 0, 325)

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = MainFrame

    -- Drop shadow
    local DropShadowHolder = Instance.new("Frame")
    DropShadowHolder.Parent = MainFrame
    DropShadowHolder.BackgroundTransparency = 1
    DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
    DropShadowHolder.ZIndex = 0

    local DropShadow = Instance.new("ImageLabel")
    DropShadow.Parent = DropShadowHolder
    DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow.Size = UDim2.new(1, 47, 1, 47)
    DropShadow.BackgroundTransparency = 1
    DropShadow.Image = "rbxassetid://6014261993"
    DropShadow.ImageTransparency = 0.5
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    DropShadow.ZIndex = 0

    -- TopBar
    local TopBar = Instance.new("Frame")
    TopBar.Parent = MainFrame
    TopBar.BackgroundColor3 = Color3.fromRGB(50, 59, 127)
    TopBar.BorderSizePixel = 0
    TopBar.Size = UDim2.new(1, 0, 0, 31)

    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0, 4)
    TopCorner.Parent = TopBar

    local Title = Instance.new("TextLabel")
    Title.Parent = TopBar
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Font = Enum.Font.Cartoon
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 22
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local Padding = Instance.new("UIPadding")
    Padding.PaddingLeft = UDim.new(0.05, 0)
    Padding.Parent = Title

    -- Tabs bar
    local Tabs = Instance.new("Frame")
    Tabs.Parent = MainFrame
    Tabs.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0, 0, 0, 31)
    Tabs.Size = UDim2.new(1, 0, 0, 32)

    local TabsLayoutFrame = Instance.new("Frame")
    TabsLayoutFrame.Parent = Tabs
    TabsLayoutFrame.BackgroundTransparency = 1
    TabsLayoutFrame.Position = UDim2.new(0.25, 0, 0.12, 0)
    TabsLayoutFrame.Size = UDim2.new(0, 506, 0, 24)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = TabsLayoutFrame
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.03, 0)

    -- Sections
    local Sections = Instance.new("ScrollingFrame")
    Sections.Parent = MainFrame
    Sections.BackgroundTransparency = 1
    Sections.Position = UDim2.new(0, 0, 0, 63)
    Sections.Size = UDim2.new(1, 0, 1, -63)
    Sections.ScrollBarThickness = 0
    Sections.CanvasSize = UDim2.new(0, 0, 0, 0)
    Sections.AutomaticCanvasSize = Enum.AutomaticSize.Y

    -- expose references
    self.ScreenGui = ScreenGui
    self.MainFrame = MainFrame
    self.TabsContainer = TabsLayoutFrame
    self.SectionsContainer = Sections

    return self
end

return Window
