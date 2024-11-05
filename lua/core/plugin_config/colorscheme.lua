require("gruvbox").setup({
  overrides = {
    SignColumn = { bg = "#282828" }
  }
})

require("monokai-pro").setup({
  override = function()
    return {
      EndOfBuffer = { fg = "#514f53" },
      NvimTreeEndOfBuffer = { fg = "#514f53" },
    }
  end
})

vim.cmd("colorscheme monokai-pro")
