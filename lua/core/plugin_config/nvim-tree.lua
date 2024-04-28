-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  -- This updates Nvim-Tree root directory to original everytime I go back
  update_focused_file = {
    enable = true,
    update_cwd = true,
  }
})

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
