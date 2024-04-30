require("ibl").setup({
  indent = {
    highlight = { "IblWhitespace" }, 
    char = "▏", 
  },
  scope = {
    show_start = false,
    show_end = false,
    injected_languages = true,
    priority = 1024,
    include = {
      node_type = {
        ["*"] = {
          "arguments",
          "block",
          "bracket",
          "declaration",
          "expression_list",
          "field",
          "for",
          "func_literal",
          "function",
          "if",
          "import",
          "list",
          "return_statement",
          "short_var_declaration",
          "switch_body",
          "try",
          "type",
        },
      },
    },
  },
  vim.api.nvim_set_hl(0, "IblScope", { fg = "#fe423a" })
})

