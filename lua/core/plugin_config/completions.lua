local cmp = require("cmp")
local lspkind = require('lspkind')

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select}),
    ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<a-up>'] = cmp.mapping.scroll_docs(-4),
    ['<a-down>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Tab>'] = cmp.mapping.confirm({ select = false}), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
  },
  --[[ window = {
    completion = cmp.config.window.bordered({
      border = "rounded",
    })
  }, ]]
  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      maxwidth = 50,
      menu = {
        buffer = '[BUF]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[API]',
        path = '[PATH]',
        luasnip = '[SNIP]',
      },
    }),
  },

  -- To change the color for completion menu and diagonistics (Necessary for > Nvim 0.10)
  vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' }),
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#2d2e33' }),

-- TO enable snippets of html in php
  require("luasnip").filetype_extend("javascriptreact", { "html" }),
  require("luasnip").filetype_extend("typescriptreact", { "html" }),
  require("luasnip").filetype_extend("php", { "html" }),
})
