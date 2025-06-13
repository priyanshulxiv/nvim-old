local border = {
  { "🭽", "FloatBorder" },
  { "▔", "FloatBorder" },
  { "🭾", "FloatBorder" },
  { "▕", "FloatBorder" },
  { "🭿", "FloatBorder" },
  { "▁", "FloatBorder" },
  { "🭼", "FloatBorder" },
  { "▏", "FloatBorder" },
}

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  signs = {
    numhl = {
      [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
      [vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
      [vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
      [vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
    },
  },
  float = {
    focusable = true,
    style = "minimal",
    border = border,
    source = "always",
    header = "",
    prefix = "",
    suffix = "",
  },
})

-- Capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.semanticTokens.multilineTokenSupport = true
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.foldingRange = { dynamicRegistration = true, lineFoldingOnly = true }
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspAttach", { clear = true }),
  callback = function(ev)
    local bufnr = ev.buf
    local client = vim.lsp.get_client_by_id(ev.data.client_id)

    if not client then
      return
    end

    -- <C-x><C-o> for built-in completions menu
    if client.server_capabilities.completionProvider then
      vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
    end
    -- Uses tags and acts as go-to-definition
    if client.server_capabilities.definitionProvider then
      vim.bo[bufnr].tagfunc = "v:lua.vim.lsp.tagfunc"
    end
    -- Disable semantic tokens
    client.server_capabilities.semanticTokensProvider = nil

    -- Keymaps
    local bufopts = { silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "gs", vim.lsp.buf.document_symbol, bufopts)
    vim.keymap.set("n", "gS", vim.lsp.buf.workspace_symbol, bufopts)
    vim.keymap.set("n", "grt", vim.lsp.buf.type_definition, bufopts)
    -- Defaults
    -- gri -> go-to-implementation
    -- grr -> go-to-references
    -- gra -> code actions
    -- grn -> lsp-rename

    -- Lsp Hover Windows
    vim.keymap.set("n", "K", function()
      vim.lsp.buf.hover({
        border = border,
      })
    end, bufopts)
    vim.keymap.set("n", "gK", function()
      vim.lsp.buf.signature_help({
        border = border,
      })
    end, bufopts)
    vim.keymap.set("i", "<C-k>", function()
      vim.lsp.buf.signature_help({
        border = border,
      })
    end, bufopts)

    -- Diagnostic
    vim.keymap.set("n", "grd", vim.diagnostic.open_float, bufopts)
    vim.keymap.set("n", "grq", vim.diagnostic.setqflist, bufopts)
    vim.keymap.set("n", "grg", function()
      local state = vim.diagnostic.is_enabled({ bufnr = bufnr })
      vim.diagnostic.enable(not state, { bufnr = bufnr })

      if not state then
        vim.notify("Diagnostics enabled for current buffer.", vim.log.levels.INFO)
      else
        vim.notify("Diagnostics disabled for current buffer.", vim.log.levels.INFO)
      end
    end, { buffer = bufnr })

    -- Defaults
    -- [d - jump to previous diagnostic of current buffer
    -- ]d - jump to next diagnostic of current buffer
  end,
})

-- LSP references
-- https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/configs

-- LSPs config for languages
vim.lsp.config("*", {
  capabilities = capabilities,
})

-- Language specific config
vim.lsp.config("lua_ls", {
  settings = {
    runtime = {
      version = "LuaJIT",
    },
    telemetry = {
      enable = false,
    },
  },
})

vim.lsp.config("emmet_language_server", {
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

-- Enabling LSPs
vim.lsp.enable({
  "clangd",
  "cssls",
  "html",
  "ts_ls",
  "lua_ls",
  "emmet_language_server",
})
