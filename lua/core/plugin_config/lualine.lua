require("lualine").setup({
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = {},
	},
	options = {
		show_command = false,
	},
})
