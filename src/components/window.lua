local Window = {}
Window.__index = Window



function Window.new(config)
    config = config or {}
    local self = setmetatable({}, Window)

    local title = config.Title or "UI Library"

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "offset-hub"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game.CoreGui

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
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.5
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    DropShadow.ZIndex = 0


    local TopBar = Instance.new("Frame")
    TopBar.Parent = MainFrame
    TopBar.BackgroundColor3 = Color3.fromRGB(50, 59, 127)
    TopBar.BorderSizePixel = 0
    TopBar.Size = UDim2.new(1, 0, 0, 31)

    local CoverFrame = Instance.new("Frame")
    CoverFrame.Name = "CoverFrame"
    CoverFrame.Parent = TopBar
    CoverFrame.BackgroundColor3 = Color3.fromRGB(50, 59, 127)
    CoverFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CoverFrame.BorderSizePixel = 0
    CoverFrame.Position = UDim2.new(-4.37214585e-05, 0, 1, 0)
    CoverFrame.Size = UDim2.new(0, 698, 0, -18)

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


    local Tabs = Instance.new("Frame")
    Tabs.Parent = MainFrame
    Tabs.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0, 0, 0, 31)
    Tabs.Size = UDim2.new(1, 0, 0, 32)



    local SearchTab = Instance.new("Frame")
    SearchTab.Name = "SearchTab"
    SearchTab.Parent = Tabs
    SearchTab.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
    SearchTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SearchTab.BorderSizePixel = 0
    SearchTab.Position = UDim2.new(0.0232101493, 0, 0.135858536, 0)
    SearchTab.Size = UDim2.new(0, 135, 0, 23)

    local SearchBox = Instance.new("TextBox")
    SearchBox.Name = "SearchBox"
    SearchBox.Parent = SearchTab
    SearchBox.Active = false
    SearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SearchBox.BackgroundTransparency = 1.000
    SearchBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SearchBox.BorderSizePixel = 0
    SearchBox.Position = UDim2.new(0.239335805, 0, 0, 0)
    SearchBox.Selectable = false
    SearchBox.Size = UDim2.new(0.760664225, 0, 1, 0)
    SearchBox.Font = Enum.Font.Cartoon
    SearchBox.Text = "Search..."
    SearchBox.PlaceholderText = "Search..."
    SearchBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
    SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    SearchBox.TextScaled = true
    SearchBox.TextSize = 14.000
    SearchBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    SearchBox.TextWrapped = true

    local SearchIcon = Instance.new("ImageLabel")
    SearchIcon.Name = "SearchIcon"
    SearchIcon.Parent = SearchTab
    SearchIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SearchIcon.BackgroundTransparency = 1.000
    SearchIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SearchIcon.BorderSizePixel = 0
    SearchIcon.Position = UDim2.new(0.0689655468, 0, 0, 0)
    SearchIcon.Size = UDim2.new(0.174999997, 0, 1, 0)
    SearchIcon.Image = "rbxassetid://10734943674"

    local SearchTabUICorner = Instance.new("UICorner")
    SearchTabUICorner.CornerRadius = UDim.new(0, 4)
    SearchTabUICorner.Parent = SearchTab

    local Divider = Instance.new("Frame")
    Divider.Name = "Divider"
    Divider.Parent = Tabs
    Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Divider.BorderSizePixel = 0
    Divider.Position = UDim2.new(0.23381187, 0, 0.0265865326, 0)
    Divider.Size = UDim2.new(0, -2, 0, 30)

    local TabsLayoutFrame = Instance.new("Frame")
    TabsLayoutFrame.Name = "Layout"
    TabsLayoutFrame.Parent = Tabs
    TabsLayoutFrame.BackgroundTransparency = 1
    TabsLayoutFrame.Position = UDim2.new(0.25, 0, 0.12, 0)
    TabsLayoutFrame.Size = UDim2.new(0, 506, 0, 24)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = TabsLayoutFrame
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.03, 0)


    local Sections = Instance.new("ScrollingFrame")
    Sections.Name = "Sections"
    Sections.Parent = MainFrame
    Sections.BackgroundTransparency = 1
    Sections.Position = UDim2.new(0, 0, 0, 63)
    Sections.Size = UDim2.new(1, 0, 1, -63)
    Sections.ScrollBarThickness = 0
    Sections.CanvasSize = UDim2.new(0, 0, 0, 0)
    Sections.AutomaticCanvasSize = Enum.AutomaticSize.Y

    local UserInputService = game:GetService("UserInputService")

    local dragging = false
    local dragStart
    local startPos

    -- Start dragging
    MainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    -- Update position while dragging
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (
            input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch
        ) then
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)

    local minimiseKey = config.MinimiseKey or Enum.KeyCode.K

    UserInputService.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            if input.KeyCode == minimiseKey then
                ScreenGui.Enabled = not ScreenGui.Enabled
            end
        end
    end)





    self.ScreenGui = ScreenGui
    self.MainFrame = MainFrame
    self.TabsContainer = TabsLayoutFrame
    self.SectionsContainer = Sections

    return self
end

return Window
