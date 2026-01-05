local Library = loadstring(readfile("bundle.lua"))()

local win = Library:CreateWindow({
    Title = "My Script", -- window title
    MinimizeKey = Enum.KeyCode.K -- key to minimize key
})

local mainTab = win:CreateTab("Main", "crown") -- creates an tab with an crown icon (lucide support)

local Section = mainTab:CreateSection("Section")

AutoFrameType:AddCheckbox({
    Title = "Test Checkbox", -- title of checkbox
    Default = false, -- default value of checkbox
    Callback = function(value) -- callback
        print("Checkbox:", value)
    end
})

AutoFrameType:AddSlider({
    Title = "Test Slider", -- title of slider
    Min = 1, -- min value of slider
    Max = 50, -- max value of slider
    Default = 16, -- default value of slider
    Increment = 1, -- increments in 1's
    Callback = function(value) -- callback
        print("Slider:", value)
    end
})

AutoFrameType:AddButton({
    Title = "Test Button", -- title of button
    Callback = function() -- callback
        print("Button clicked")
    end
})
