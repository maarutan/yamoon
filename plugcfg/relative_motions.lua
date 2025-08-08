#!/usr/bin/env lua

local function relative_motitor()
	require("relative-motions"):setup({
		show_numbers = "relative_absolute",
		show_motion = true,
	})
end

return relative_motitor()
