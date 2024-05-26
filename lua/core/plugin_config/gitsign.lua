require('gitsigns').setup({
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 100,
    virt_text_priority = 80,
  },
  signs = {
    add = { text = "a" },
    change = { text = "c" },
    delete       = { text = 'd' },
    topdelete    = { text = 'tp' },
    changedelete = { text = 'cd' },
    untracked    = { text = 'u' },
  }
})
