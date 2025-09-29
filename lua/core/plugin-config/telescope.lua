local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.setup({
  pickers = {
    live_grep = {
      additional_args = function(_)
        return { "--hidden" }
      end,
    },
    colorscheme = {
      enable_preview = true,
    },
  },
  defaults = {
    file_ignore_patterns = { "node_modules", "%.git[\\/]", "%.cache", "%.o", "%.out", "%.exe" }, -- [\\/] matches either / or \ in paths, necessary for windows
  },
})

-- Load fzf extension for telescope
telescope.load_extension("fzf")

-- Keymaps
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>ft", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fr", builtin.oldfiles)
vim.keymap.set("n", "<leader>fh", builtin.highlights)
vim.keymap.set("n", "<leader>fc", builtin.colorscheme)

-- Telescope find files without preview
vim.keymap.set("n", "<leader>fp", function()
  builtin.find_files({
    hidden = true,
    previewer = false,
  })
end)

-- Telescope find files inside dotfiles
vim.keymap.set("n", "<leader>fd", function()
  builtin.find_files({
    hidden = true,
  })
end)

-- Telescope search currently selected text
vim.keymap.set("x", "<leader>ft", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>")
