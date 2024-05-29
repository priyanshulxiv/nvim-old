require("gruvbox").setup({
  contrast = "hard",
  palette_overrides = {
    dark0_hard = "#1D1E22",
  },
})
vim.cmd("colorscheme gruvbox")

-- Change cursorline color
vim.cmd [[highlight CursorLine guibg=#2d2e33]]

--Change signcolumn color
vim.cmd [[highlight SignColumn guibg=#1D1E22]]

--Change numbercolumn color
vim.cmd [[highlight CursorLineNr guibg=#2d2e33]]

--Change completions menu background color
vim.cmd [[highlight PMenu guibg=#3c3d42]]
