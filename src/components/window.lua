return function(lib)
    local window = {}
    window.__index = window

    function window.new(title)
        local self = setmetatable({}, window)
        
        local MainFrame = Instance.new("Frame")
        local DropShadowHolder = Instance.new("Frame")
        local DropShadow = Instance.new("ImageLabel")
        local UICorner = Instance.new("UICorner")
        local Tabs = Instance.new("Frame")
        local Layout = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local SearchTab = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local TextLabel_2 = Instance.new("ImageLabel")
        local Divider = Instance.new("Frame")
        local TopBar = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local TextLabel_3 = Instance.new("TextLabel")
        local UIPadding = Instance.new("UIPadding")
        local Sections = Instance.new("ScrollingFrame")

        MainFrame.Name = "MainFrame"
        MainFrame.Parent = game.CoreGui["offset-hub"]
        MainFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
        MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        MainFrame.BorderSizePixel = 0
        MainFrame.Position = UDim2.new(0.226311669, 0, 0.29808265, 0)
        MainFrame.Size = UDim2.new(0, 698, 0, 325)

        DropShadowHolder.Name = "DropShadowHolder"
        DropShadowHolder.Parent = MainFrame
        DropShadowHolder.BackgroundTransparency = 1.000
        DropShadowHolder.BorderSizePixel = 0
        DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
        DropShadowHolder.ZIndex = 0

        DropShadow.Name = "DropShadow"
        DropShadow.Parent = DropShadowHolder
        DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        DropShadow.BackgroundTransparency = 1.000
        DropShadow.BorderSizePixel = 0
        DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        DropShadow.Size = UDim2.new(1, 47, 1, 47)
        DropShadow.ZIndex = 0
        DropShadow.Image = "rbxassetid://6014261993"
        DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        DropShadow.ImageTransparency = 0.500
        DropShadow.ScaleType = Enum.ScaleType.Slice
        DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = MainFrame

        Tabs.Name = "Tabs"
        Tabs.Parent = MainFrame
        Tabs.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
        Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Tabs.BorderSizePixel = 0
        Tabs.Position = UDim2.new(-4.37651797e-05, 0, 0.0886023864, 0)
        Tabs.Size = UDim2.new(0, 698, 0, 32)

        Layout.Name = "Layout"
        Layout.Parent = Tabs
        Layout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Layout.BackgroundTransparency = 1.000
        Layout.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Layout.BorderSizePixel = 0
        Layout.Position = UDim2.new(0.252148986, 0, 0.120336533, 0)
        Layout.Size = UDim2.new(0, 506, 0, 24)

        UIListLayout.Parent = Layout
        UIListLayout.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0.0299999993, 0)

        SearchTab.Name = "SearchTab"
        SearchTab.Parent = Tabs
        SearchTab.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
        SearchTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SearchTab.BorderSizePixel = 0
        SearchTab.Position = UDim2.new(0.0232101493, 0, 0.135858536, 0)
        SearchTab.Size = UDim2.new(0, 135, 0, 23)

        UICorner_2.CornerRadius = UDim.new(0, 5)
        UICorner_2.Parent = SearchTab

        TextLabel.Parent = SearchTab
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.239335805, 0, 0, 0)
        TextLabel.Size = UDim2.new(0.760664225, 0, 1, 0)
        TextLabel.Font = Enum.Font.Cartoon
        TextLabel.Text = "Search..."
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextWrapped = true

        TextLabel_2.Name = "TextLabel"
        TextLabel_2.Parent = SearchTab
        TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_2.BackgroundTransparency = 1.000
        TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_2.BorderSizePixel = 0
        TextLabel_2.Position = UDim2.new(0.0689655468, 0, 0, 0)
        TextLabel_2.Size = UDim2.new(0.174999997, 0, 1, 0)
        TextLabel_2.Image = "rbxassetid://10734943674"

        Divider.Name = "Divider"
        Divider.Parent = Tabs
        Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Divider.BorderSizePixel = 0
        Divider.Position = UDim2.new(0.23381187, 0, 0.0265865326, 0)
        Divider.Size = UDim2.new(0, -2, 0, 30)

        TopBar.Name = "TopBar"
        TopBar.Parent = MainFrame
        TopBar.BackgroundColor3 = Color3.fromRGB(50, 59, 127)
        TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TopBar.BorderSizePixel = 0
        TopBar.Position = UDim2.new(-4.37651797e-05, 0, -0.00409555295, 0)
        TopBar.Size = UDim2.new(0, 698, 0, 31)

        UICorner_3.CornerRadius = UDim.new(0, 4)
        UICorner_3.Parent = TopBar

        TextLabel_3.Parent = TopBar
        TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_3.BackgroundTransparency = 1.000
        TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_3.BorderSizePixel = 0
        TextLabel_3.Size = UDim2.new(0, 698, 0, 31)
        TextLabel_3.Font = Enum.Font.Cartoon
        TextLabel_3.Text = title
        TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_3.TextSize = 22.000
        TextLabel_3.TextWrapped = true
        TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

        UIPadding.Parent = TextLabel_3
        UIPadding.PaddingLeft = UDim.new(0.0500000007, 0)

        Sections.Name = "Sections"
        Sections.Parent = MainFrame
        Sections.Active = true
        Sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Sections.BackgroundTransparency = 1.000
        Sections.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Sections.BorderSizePixel = 0
        Sections.Position = UDim2.new(0, 0, 0.190769225, 0)
        Sections.Selectable = false
        Sections.Size = UDim2.new(0, 698, 0, 263)
        Sections.ScrollBarThickness = 0

        return self
    end

    return window
end
