require('gitsigns').setup({
  signs = {
    add = { text = "a" },
    change = { text = "c" },
    delete = { text = 'd' },
    topdelete = { text = 'tp' },
    changedelete = { text = 'cd' },
    untracked = { text = 'u' },
  }
})
