--!/usr/bin/env lua
-- ┬ ┌┐┌ ┬ ┌┬┐
-- │ │││ │  │
-- ┴ ┘└┘ ┴  ┴
--------------------------
local plug_conf_dir = "plugcfg" -- your configure dir for plugins
local initfiles = { -- write name file for init your plug config
	"git",
	"yatline",
	"simple_tag",
	"full_border",
	"eza_preview",
	"augment_command",
	"relative_motions",
}

-- ┬  ┌─┐┌─┐┌┬┐
-- │  │ │├─┤ ││
-- ┴─┘└─┘┴ ┴─┴┘
---------------------------
-- init file logic
for _, name in ipairs(initfiles) do
	dofile(os.getenv("HOME") .. "/.config/yazi/" .. plug_conf_dir .. "/" .. name .. ".lua")
end

return { plug_conf_dir = plug_conf_dir }
