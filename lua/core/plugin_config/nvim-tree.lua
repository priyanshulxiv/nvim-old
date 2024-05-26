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
    preserve_window_proportions = true,
    width = 30,
  },
  renderer = {
    group_empty = true,
    icons = {
      glyphs = {
        git = {
          unstaged = "U",
          staged = "S",
          unmerged = "UM",
          renamed = "R",
          untracked = "UT",
          deleted = "D",
          ignored = "I",
        }
      }
    }
  },
  filters = {
    dotfiles = false,
  },
  -- This updates Nvim-Tree root directory to original everytime I go back
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
})

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
