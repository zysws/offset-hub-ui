local Library = {}
Library.__index = Library

local Window = __require("components.window")
local Tab = __require("components.tab")
local Lucide = __require("icons")
local Shared = __require("shared")


Library.Icons = Lucide

function Library:CreateWindow(config)
	config = config or {}

	local window = Window.new({
		Title = config.Title or "UI Library"
	})

	local api = {}

	Shared.Window = window
	Shared.API = api

	function api:CreateTab(name, icon)
		return Tab.new(window, name, icon)
	end


	function api:GetAvailableRows()
		local sections = window.SectionsContainer.List
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
			return leftRow
		else
			return rightRow
		end
	end




	function api:Destroy()
		window.ScreenGui:Destroy()
	end

	return api
end


return setmetatable({}, Library)
