require("bufferline").setup({
	options = {
		event = "VimEnter",
		always_show_bufferline = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				padding = 1,
			},
		},
		sort_by = "insert_at_end",
	},
})

vim.keymap.set("n", "<leader>E", "<CMD>BufferLineMoveNext<CR>", { silent = true })
vim.keymap.set("n", "<leader>Q", "<CMD>BufferLineMovePrev<CR>", { silent = true })
