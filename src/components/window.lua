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

    local Buttons = Instance.new("Frame")
    Buttons.Name = "Buttons"
    Buttons.Parent = MainFrame
    Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Buttons.BackgroundTransparency = 1.000
    Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Buttons.BorderSizePixel = 0
    Buttons.Position = UDim2.new(0.783667624, 0, -0.00615384616, 0)
    Buttons.Size = UDim2.new(0.214855999, 0, 0.0974429101, 0)

    local MinimiseButton = Instance.new("Frame")
    MinimiseButton.Name = "MinimiseButton"
    MinimiseButton.Parent = Buttons
    MinimiseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MinimiseButton.BackgroundTransparency = 1.000
    MinimiseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MinimiseButton.BorderSizePixel = 0
    MinimiseButton.Position = UDim2.new(0.346737206, 0, 0, 0)
    MinimiseButton.Size = UDim2.new(0.25, 0, 1, 0)

    local ImageButton = Instance.new("ImageButton")
    ImageButton.Parent = MinimiseButton
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.0855138153, 0, 0.0211235508, 0)
    ImageButton.Size = UDim2.new(0.914485872, 0, 0.9144876, 0)
    ImageButton.Image = "rbxassetid://120201506732830"

    local ExitButton = Instance.new("Frame")
    ExitButton.Name = "ExitButton"
    ExitButton.Parent = Buttons
    ExitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExitButton.BackgroundTransparency = 1.000
    ExitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ExitButton.BorderSizePixel = 0
    ExitButton.Position = UDim2.new(0.671596169, 0, 0.0191755444, 0)
    ExitButton.Size = UDim2.new(0.245206133, 0, 0.980824471, 0)

    local ImageButton_2 = Instance.new("ImageButton")
    ImageButton_2.Parent = ExitButton
    ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_2.BackgroundTransparency = 1.000
    ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_2.BorderSizePixel = 0
    ImageButton_2.Position = UDim2.new(-0.0221777409, 0, 0.120980047, 0)
    ImageButton_2.Size = UDim2.new(0.750242352, 0, 0.750243425, 0)
    ImageButton_2.Image = "rbxassetid://79704422574304"

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

    local TabsLayoutFrame = Instance.new("ScrollingFrame")
    TabsLayoutFrame.Name = "Layout"
    TabsLayoutFrame.Parent = Tabs
    TabsLayoutFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabsLayoutFrame.BackgroundTransparency = 1.000
    TabsLayoutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabsLayoutFrame.BorderSizePixel = 0
    TabsLayoutFrame.Position = UDim2.new(0.252148986, 0, 0.120336533, 0)
    TabsLayoutFrame.Selectable = false
    TabsLayoutFrame.Size = UDim2.new(0, 506, 0, 24)
    TabsLayoutFrame.ScrollBarThickness = 0


    

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

    local function FuzzySearch(ComparisonStrings, SearchString)
        local SearchResults = {}
        
        for _,ComparisonString in pairs(ComparisonStrings) do
            local ComparisonStringLength = #ComparisonString
            local SearchStringLength = #SearchString
            
            if SearchStringLength <= ComparisonStringLength + 5 then
                
                local TempComparisonString = ComparisonString:lower()
                local TempSearchString = SearchString:lower()
                
                local Cost
                
                local Rows = ComparisonStringLength  + 1
                local Columns = SearchStringLength + 1
                
                local Distance = {}
            
                for i = 1, Rows do
                    Distance[i] = {}
                    
                    for k = 1, Columns do
                        Distance[i][k] = 0
                    end
                end
                
                for i = 2, Rows do
                    for k = 2, Columns do
                        Distance[i][1] = i
                        Distance[1][k] = k
                    end
                end
                
                for i = 2, Columns do
                    for k = 2, Rows do
                        if TempComparisonString:sub(k - 1, k - 1) == TempSearchString:sub(i - 1, i - 1) then
                            Cost = 0
                        else
                            Cost = 2
                        end
                        
                        Distance[k][i] = math.min(
                            Distance[k - 1][i] + 1,
                            Distance[k][i - 1] + 1,
                            Distance[k - 1][i - 1] + Cost
                        )
                    end
                end
                
                table.insert(SearchResults, 
                    {
                        Ratio = ((ComparisonStringLength + SearchStringLength) - Distance[Rows][Columns]) / (ComparisonStringLength + SearchStringLength),
                        Word = ComparisonString
                    }
                )
            else
                table.insert(SearchResults,
                    {
                        Ratio = 0,
                        Word = ComparisonString
                    }
                )
            end
        end
        
        table.sort(SearchResults, function(A, B)
            return A.Ratio > B.Ratio
        end)
        
        return SearchResults -- Returns in the format of { { Ratio, Word }, { Ratio, Word } }. A ratio of 1 means it completely matches and a ratio of 0 means nothing matches at all.
    end

    local function getAllTabs()
        local tabs = {}
        for _, tabFrame in ipairs(TabsLayoutFrame:GetChildren()) do
            if tabFrame:IsA("Frame") then
                local textButton = tabFrame:FindFirstChildOfClass("TextButton")
                if textButton then
                    table.insert(tabs, tabFrame)
                end
            end
        end
        return tabs
    end

    local function updateResults(text)
        local searchText = text:lower()
        local tabs = getAllTabs()

        for _, tab in ipairs(tabs) do
            local tabName = tab.TextLabel.Text:lower()
            if searchText == "" or string.find(tabName, searchText, 1, true) then
                print("showing tab:", tabName)
                tab.Visible = true
            else
                print("hiding tab:", tabName)
                tab.Visible = false
            end
        end
    end


    SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
        local searchText = SearchBox.Text
        updateResults(searchText)
    end)


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

    ImageButton.MouseButton1Click:Connect(function()
        ScreenGui.Enabled = not ScreenGui.Enabled
    end)

    ImageButton_2.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)




    self.ScreenGui = ScreenGui
    self.MainFrame = MainFrame
    self.TabsContainer = TabsLayoutFrame
    self.SectionsContainer = Sections

    return self
end

return Window
