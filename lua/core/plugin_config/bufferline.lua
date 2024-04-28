vim.opt.termguicolors = true
require("bufferline").setup({
  options = {
    event = "VimEnter",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        padding = 1,
      }
    },
  },
})
