local libraryGUI = Instance.new("ScreenGui")
libraryGUI.Name = "offset-hub"
libraryGUI.Parent = game.CoreGui

local Library = {}
Library.__index = Library

-- internal modules
local Window = require(script.Window)
local Tab = require(script.Tab)

function Library:CreateWindow(config)
    config = config or {}

    local window = Window.new({
        Title = config.Title or "UI Library",
        Size = config.Size or UDim2.new(0, 698, 0, 325)
    })

    local api = {}

    function api:CreateTab(name)
        return Tab.new(window, name)
    end

    function api:Destroy()
        window.ScreenGui:Destroy()
    end

    return api
end

return setmetatable({}, Library)
