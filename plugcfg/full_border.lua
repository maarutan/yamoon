#!/usr/bin/env lua

local function fullBorder()
	require("full-border"):setup({
		type = ui.Border.PLAIN,
	})
end

return fullBorder()
