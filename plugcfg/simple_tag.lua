function tag()
	require("simple-tag"):setup({
		-- ui display mode (icon, text, hidden)
		ui_mode = "icon", -- (optional)

		-- disable tag key hints (popup in bottom right corner)
		hints_disabled = false, -- (optional)

		-- linemode order: adjusts icon/text position. fo example, if you want icon to be on the mose left of linemode then set linemode_order larger than 1000.
		-- more info: https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-plugin/preset/components/linemode.lua#l4-l5
		linemode_order = 500, -- (optional)

		-- you can backup/restore this folder. but don't use backed up folder in the different os.
		-- save_path =  -- full path to save tags folder (optional)
		--       - linux/macos: os.getenv("home") .. "/.config/yazi/tags"
		--       - windows: os.getenv("appdata") .. "\\yazi\\config\\tags"

		-- set tag colors
		colors = { -- (optional)
			-- set this same value with `theme.toml` > [manager] > hovered > reversed
			-- default theme use "reversed = true".
			-- More info: https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-config/preset/theme-dark.toml#L25
			reversed = true, -- (Optional)

			-- More colors: https://yazi-rs.github.io/docs/configuration/theme#types.color
			-- format: [tag key] = "color"
			["*"] = "#bf68d9", -- (Optional)
			["$"] = "green",
			["!"] = "#cc9057",
			["1"] = "cyan",
			["p"] = "red",
		},

		-- Set tag icons. Only show when ui_mode = "icon".
		-- Any text or nerdfont icons should work
		-- Default icon from mactag.yazi: ●; , , 󱈤
		-- More icon from nerd fonts: https://www.nerdfonts.com/cheat-sheet
		icons = { -- (Optional)
			-- default icon
			default = "󰚋",

			-- format: [tag key] = "tag icon"
			["*"] = "*",
			["$"] = "",
			["!"] = "",
			["p"] = "",
		},
	})
end

return tag()
