local Section = {}
Section.__index = Section

local Shared = __require("shared")

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
    ScaleFrame.Size = UDim2.new(0, 336, 0, 277)

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
    Layout.Position = UDim2.new(-5.44956777e-07, 0, 0.125000104, 0)
    Layout.Size = UDim2.new(1, 0, 1.1795342, 0)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = Layout
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    -- deciding what row to go to#
    local getRow = api:GetAvailableRows()


    if getRow then
        ScaleFrame.Parent = getRow
    else
        warn("something went wrong, found no row")
    end


    self.Window = window
    self.Tab = tab
    self.Name = name

    return self
end

return Section
