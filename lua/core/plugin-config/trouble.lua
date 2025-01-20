vim.keymap.set("n", "<leader>tt", "<CMD>Trouble diagnostics toggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>td", "<CMD>Trouble diagnostics toggle filter.buf=0<CR>", { silent = true })
vim.keymap.set("n", "<leader>tj", function()
	require("trouble").next({ skip_groups = true, jump = true })
end, { silent = true })

vim.keymap.set("n", "<leader>tk", function()
	require("trouble").prev({ skip_groups = true, jump = true })
end, { silent = true })
