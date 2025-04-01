-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		preserve_window_proportions = true,
		width = 30,
	},
	renderer = {
		group_empty = false,
		icons = {
			diagnostics_placement = "before",

			glyphs = {
				git = {
					unstaged = "U",
					staged = "S",
					unmerged = "UM",
					renamed = "R",
					untracked = "UT",
					deleted = "D",
					ignored = "I",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = false,
		debounce_delay = 150,
		icons = {
			hint = "H",
			info = "I",
			warning = "W",
			error = "E",
		},
	},
	filters = {
		dotfiles = true,
	},
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})

-- Keymaps
vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { silent = true })
