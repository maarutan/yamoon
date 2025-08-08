#!/usr/bin/env lua

local function git()
	th.git = th.git
		or {
			-- Colours
			modified = ui.Style():fg("#66CCFF"),
			added = ui.Style():fg("#77C779"),
			untracked = ui.Style():fg("#D3D3D3"),
			ignored = ui.Style():fg("#A0A0A0"),
			deleted = ui.Style():fg("#F44336"),
			updated = ui.Style():fg("#9C27B0"),

			-- Icons
			modified_sign = "  ",
			added_sign = "  ",
			untracked_sign = "  ",
			ignored_sign = "  ",
			deleted_sign = "  ",

			-- Unmerged
			updated_sign = "  ",
		}
	require("git"):setup()
end

return git()
