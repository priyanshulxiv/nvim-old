require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver", "clangd", "csharp_ls", "html", "cssls", "intelephense", "emmet_language_server", "pyright" },
  lazy = false,
  opts = {
    auto_install = true,
  },
})

local langservers = {
  'html',
  'cssls',
  'clangd',
  'tsserver',
  'lua_ls',
  "pyright",
  "emmet_language_server",
  "csharp_ls",
  "intelephense"
}

local on_attach = function(client, bufnr)
  vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
  vim.keymap.set("n", "<S-K>", vim.lsp.buf.hover, {})
end
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, server in ipairs(langservers) do
  require'lspconfig'[server].setup{
    on_attach = on_attach,
    capabilities = capabilities
  }
end

require'lspconfig'.lua_ls.setup{
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "opt", "cmd" }
      },
    },
    runtime = {
      version = "LuaJIT"
    }
  }
}
require'lspconfig'.emmet_language_server.setup{
  filetypes = { "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "typescriptreact", "php" },
}
