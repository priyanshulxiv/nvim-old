local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, { silent = true })
vim.keymap.set("n", "<leader>st", builtin.live_grep, { silent = true })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { silent = true })
vim.keymap.set("n", "<leader>sr", builtin.oldfiles, { silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<leader>ff",
	":lua require('telescope.builtin').find_files({previewer = false})<CR>",
	{ silent = true }
)
vim.api.nvim_set_keymap("v", "<leader>st", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", { silent = true })

require("telescope").setup({
	pickers = {
		colorscheme = {
			enable_preview = true,
		},
	},
	defaults = {
		mappings = {
			i = { -- Insert mode mappings
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<a-k>"] = require("telescope.actions").preview_scrolling_up,
				["<a-j>"] = require("telescope.actions").preview_scrolling_down,
				["<Tab>"] = require("telescope.actions").select_default,
			},
			n = { -- Normal mode mappings (optional)
				["<a-k>"] = require("telescope.actions").preview_scrolling_up,
				["<a-j>"] = require("telescope.actions").preview_scrolling_down,
				["<Tab>"] = require("telescope.actions").select_default,
			},
		},
	},
})
