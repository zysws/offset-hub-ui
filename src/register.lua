local Library = {}
Library.__index = Library

local Window = __require("components.window")
local Tab = __require("components.tab")
local Lucide = __require("icons")

Library.Icons = Lucide

function Library:CreateWindow(config)
    config = config or {}

    local window = Window.new({
        Title = config.Title or "UI Library"
    })

    local api = {}

    function api:CreateTab(name, icon)
        return Tab.new(window, name, icon)
    end

    function api:Destroy()
        window.ScreenGui:Destroy()
    end

    return api
end

return setmetatable({}, Library)
