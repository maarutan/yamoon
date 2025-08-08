#!/usr/bin/env lua

local file_path = os.getenv("HOME") .. "/.config/yazi/themes.txt"

local file = io.open(file_path, "r")
if not file then
	error("Failed to open file: " .. file_path)
end

local file_content = file:read("*a"):gsub("%s+", "")
file:close()

local yatline_themes = {
	{ "catppuccin", require("yatline-catppuccin"):setup("macchiato") }, -- or "frappe", "macchiato", "mocha", "latte"
	{ "gruvbox", require("yatline-gruvbox"):setup("dark") }, -- or "light"
}

local themes_handler = function(for_what)
	if for_what == "yatline" then
		for _, theme in ipairs(yatline_themes) do
			if theme[1] == file_content then
				return theme[2]
			end
		end
	end
end

return themes_handler
