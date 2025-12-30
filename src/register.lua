local Library = {}
Library.__index = Library

local Window = __require("window")
local Tab = __require("tab")

function Library:CreateWindow(config)
    config = config or {}

    local window = Window.new({
        Title = config.Title or "UI Library"
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
