require("conform").setup({
	format_on_save = function(bufnr)
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end
		return { timeout_ms = 500, lsp_format = "fallback" }
	end,
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		markdown = { "prettier" },
	},
})

-- Custom command to Disable format on save: FormatDisable, FormatDisable! (for current buffer)
vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		vim.b.disable_autoformat = true
		print("Autoformat on save disabled for the current buffer.")
	else
		vim.g.disable_autoformat = true
		print("Autoformat on save disabled globally.")
	end
end, {
	bang = true,
})

-- Custom command to Enable format on save for all buffers: FormatEnable
vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
	print("Autoformat on save enabled.")
end, {})
