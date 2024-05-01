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
          "*", 
        },
      },
    },
  },
  vim.api.nvim_set_hl(0, "IblScope", { fg = "#fe423a" })
})

