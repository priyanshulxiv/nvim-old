require("gruvbox").setup({
  contrast = "hard",
  palette_overrides = {
    dark0_hard = "#1D1E22",
  },
})
vim.cmd("colorscheme gruvbox")

-- Change cursorline color
vim.cmd [[highlight CursorLine guibg=#2d2e33]]
