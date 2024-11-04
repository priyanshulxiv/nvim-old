local null_ls = require("null-ls")

-- Check https://github.com/nvimtools/none-ls-extras.nvim/tree/main/lua/none-ls for available formatters of none-ls-extras

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier,
    require("none-ls.diagnostics.eslint"),
    null_ls.builtins.completion.tags,
  },
})
