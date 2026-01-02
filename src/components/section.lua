local Section = {}
Section.__index = Section

local Shared = __require("shared")
local Checkbox = __require("components.checkbox")
local Slider = __require("components.slider")
local Button = __require("components.button")
local Icons = Shared.Icons

local PADDING = 40

function Section.new(window, tab, name)
    assert(window, "Section.new: window is nil")
    assert(name, "Section.new: name is nil")

    local self = setmetatable({}, Section)
    local api = Shared.API

    local ScaleFrame = Instance.new("Frame")
    ScaleFrame.Name = "ScaleFrame"
    ScaleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScaleFrame.BackgroundTransparency = 1.000
    ScaleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScaleFrame.BorderSizePixel = 0
    ScaleFrame.Size = UDim2.new(0, 336, 0, 91)

    local Header = Instance.new("Frame")
    Header.Name = "Header"
    Header.Parent = ScaleFrame
    Header.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header.BorderSizePixel = 0
    Header.Size = UDim2.new(0, 336, 0, 27)

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Header

    local TItle = Instance.new("TextLabel")
    TItle.Name = "TItle"
    TItle.Parent = Header
    TItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TItle.BackgroundTransparency = 1.000
    TItle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TItle.BorderSizePixel = 0
    TItle.Position = UDim2.new(0.0566155016, 0, 0.0739018396, 0)
    TItle.Size = UDim2.new(0.718532443, 0, 0.849175096, 0)
    TItle.Font = Enum.Font.Cartoon
    TItle.Text = name
    TItle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TItle.TextScaled = true
    TItle.TextSize = 14.000
    TItle.TextWrapped = true

    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Parent = Header
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.890532553, 0, 0, 0)
    ImageLabel.Size = UDim2.new(0, 26, 0, 26)
    ImageLabel.Image = "rbxassetid://10709768939"

    local Layout = Instance.new("Frame")
    Layout.Name = "Layout"
    Layout.Parent = ScaleFrame
    Layout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Layout.BackgroundTransparency = 1.000
    Layout.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Layout.BorderSizePixel = 0
    Layout.ClipsDescendants = true
    Layout.LayoutOrder = 1
    Layout.Position = UDim2.new(0, 0, 0, 34)
    Layout.Size = UDim2.new(0, 336, 0, 0)
    Layout.AutomaticSize = Enum.AutomaticSize.Y

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = Layout
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    local textButton = Instance.new("TextButton")
    textButton.Name = "Button"
    textButton.Parent = Header
    textButton.BackgroundTransparency = 1
    textButton.Size = UDim2.new(1, 0, 1, 0)
    textButton.Text = ""


    local asset

    textButton.MouseButton1Click:Connect(function()
        self.Settings.Expanded = not self.Settings.Expanded

        if not self.Settings.Expanded then
            asset = Icons.GetAsset("arrow-down", 48)
            if asset then
                ImageLabel.Image = asset.Url
                ImageLabel.ImageRectOffset = asset.ImageRectOffset
                ImageLabel.ImageRectSize = asset.ImageRectSize
            end
            
            Layout.Visible = false
            ScaleFrame.Size = UDim2.new(0, 366, 0, 19)
        else
            asset = Icons.GetAsset("arrow-up", 48)
            if asset then
                ImageLabel.Image = asset.Url
                ImageLabel.ImageRectOffset = asset.ImageRectOffset
                ImageLabel.ImageRectSize = asset.ImageRectSize
            end
            Layout.Visible = true
            ScaleFrame.Size = UDim2.new(0, 336, 0, 277 + PADDING)
        end
    end)

    -- resizes scaleframe to layout, because other sections overlap otherwise
    local function resize()
        ScaleFrame.Size = UDim2.new(
            ScaleFrame.Size.X.Scale,
            ScaleFrame.Size.X.Offset,
            0,
            Layout.AbsoluteSize.Y + PADDING
        )
    end

    Layout:GetPropertyChangedSignal("AbsoluteSize"):Connect(resize)
    
    resize()


    -- deciding what row to go to#
    local listName = "Tab_"..tab.Name
    local list = window.SectionsContainer:FindFirstChild(listName)

    local getRow

    local sections = list
    local leftRow = sections.LeftRow
    local rightRow = sections.RightRow

    local leftCount = 0
    local rightCount = 0

    for _, child in ipairs(leftRow:GetChildren()) do
        if child:IsA("Frame") then
            leftCount += 1
        end
    end

    for _, child in ipairs(rightRow:GetChildren()) do
        if child:IsA("Frame") then
            rightCount += 1
        end
    end

    if leftCount <= rightCount then
        getRow = leftRow
    else
        getRow = rightRow
    end


    if getRow then
        ScaleFrame.Parent = getRow
    else
        warn("something went wrong, found no row")
    end

    self.Window = window
    self.Tab = tab
    self.Name = name
    self.Layout = Layout
    self.Settings = {}

    function Section:AddCheckbox(...)
        local args = {...}

        -- table-based API
        if type(args[1]) == "table" then
            local cfg = args[1]

            return Checkbox.new(
                self.Window,
                self.Tab,
                self,
                cfg.Title or "Checkbox",
                cfg.Default or false,
                cfg.Callback
            )
        end

        -- legacy api
        return Checkbox.new(self.Window, self.Tab, self, ...)
    end


    function Section:AddSlider(...)
        local args = {...}

        if type(args[1]) == "table" then
            local cfg = args[1]

            return Slider.new(
                self.Window,
                self.Tab,
                self,
                cfg.Title or "Slider",
                cfg.Min or 0,
                cfg.Max or 100,
                cfg.Default or cfg.Min or 0,
                cfg.Increment or 1,
                cfg.Callback
            )
        end

        return Slider.new(self.Window, self.Tab, self, ...)
    end


    function Section:AddButton(...)
        local args = {...}

        if type(args[1]) == "table" then
            local cfg = args[1]

            return Button.new(
                self.Window,
                self.Tab,
                self,
                cfg.Title or "Button",
                cfg.Callback
            )
        end

        return Button.new(self.Window, self.Tab, self, ...)
    end



    return self
end

return Section
