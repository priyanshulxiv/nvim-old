require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
		"ts_ls",
		"html",
		"cssls",
		"emmet_language_server",
	},
	lazy = false,
	opts = {
		auto_install = true,
	},
})
require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
	},
})
