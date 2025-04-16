require("gruvbox").setup({
  overrides = {
    SignColumn = { bg = "#282828" },
    FloatBorder = { fg = "#7e7764", bg = "#32302f" },
    NormalFloat = { bg = "#32302f" },
    FoldColumn = { bg = "NONE" },
  },
})
-- Enabling colorscheme
vim.cmd("colorscheme gruvbox")
