function eza_preview()
	require("eza-preview"):setup({
		level = 3,
		follow_symlinks = false,
		dereference = false,
	})
end
return eza_preview()
