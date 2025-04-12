-- ┬┌┐┌┬┌┬┐
-- │││││ │
-- ┴┘└┘┴ ┴
local plug_conf_dir = "plugcfg" -- your configure dir for plugins
local initfiles = { -- write name file for init your plug config
	"git",
	"yatline",
	"augment_command",
	"eza_preview",
	"simple_tag",
	"relative_motions",
	"full_border",
}
-- ┬  ┌─┐┌─┐┬┌─┐
-- │  │ ││ ┬││
-- ┴─┘└─┘└─┘┴└─┘
-- init file logic
for _, name in ipairs(initfiles) do
	dofile(os.getenv("HOME") .. "/.config/yazi/" .. plug_conf_dir .. "/" .. name .. ".lua")
end
