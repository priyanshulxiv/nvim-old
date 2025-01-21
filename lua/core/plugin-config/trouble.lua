require("trouble").setup({
	focus = true,
	auto_close = true,
	vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "#282828" }),
	vim.api.nvim_set_hl(0, "TroubleNormalNC", { link = "TroubleNormal" }),
})

vim.keymap.set("n", "<leader>tt", "<CMD>Trouble diagnostics toggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>td", "<CMD>Trouble diagnostics toggle filter.buf=0<CR>", { silent = true })
vim.keymap.set("n", "]t", function()
	require("trouble").next({ skip_groups = true, jump = true })
end, { silent = true })
vim.keymap.set("n", "[t", function()
	require("trouble").prev({ skip_groups = true, jump = true })
end, { silent = true })
