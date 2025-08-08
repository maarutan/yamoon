#!/usr/bin/env lua

local function augment_command()
	require("augment-command"):setup({
		prompt = false,
		default_item_group_for_prompt = "hovered",
		smart_enter = true,
		smart_paste = false,
		smart_tab_create = false,
		smart_tab_switch = false,
		confirm_on_quit = true,
		open_file_after_creation = false,
		enter_directory_after_creation = false,
		use_default_create_behaviour = false,
		enter_archives = true,
		extract_retries = 3,
		recursively_extract_archives = true,
		preserve_file_permissions = false,
		must_have_hovered_item = true,
		skip_single_subdirectory_on_enter = true,
		skip_single_subdirectory_on_leave = true,

		-- scroll
		scroll_delay = 0.02,
		smooth_scrolling = true,
		wraparound_file_navigation = true,
	})
end
return augment_command()
