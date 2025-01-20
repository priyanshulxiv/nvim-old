require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"clangd",
		-- "csharp_ls",
		"html",
		"cssls",
		"intelephense",
		"emmet_language_server",
		"pyright",
	},
	lazy = false,
	opts = {
		auto_install = true,
	},
})

local langservers = {
	"html",
	"cssls",
	"clangd",
	"ts_ls",
	"pyright",
	-- "csharp_ls",
	"intelephense",
}

local capabilities_ = vim.lsp.protocol.make_client_capabilities()
capabilities_.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "<leader>lr", require("telescope.builtin").lsp_references, bufopts)
	vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set({ "n", "i" }, "<C-h>", vim.lsp.buf.signature_help, bufopts)
	-- Diagnostic
	vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, bufopts)
	vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, bufopts)
	vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, bufopts)
	vim.keymap.set("n", "<leader>dj", function()
		vim.diagnostic.goto_next({ float = false })
	end, bufopts)
	vim.keymap.set("n", "<leader>dk", function()
		vim.diagnostic.goto_prev({ float = false })
	end, bufopts)
end
local capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities_)

for _, server in ipairs(langservers) do
	require("lspconfig")[server].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "opt", "cmd" },
			},
		},
		runtime = {
			version = "LuaJIT",
		},
	},
})
require("lspconfig").emmet_language_server.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = {
		"css",
		"eruby",
		"html",
		"htmldjango",
		"javascriptreact",
		"less",
		"pug",
		"sass",
		"scss",
		"typescriptreact",
		"php",
	},
})
require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier",
		"stylua",
	},
})
