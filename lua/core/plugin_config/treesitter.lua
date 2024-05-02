require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "python", "c_sharp", "html", "css", "javascript"},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = {"html", "css", "python"}
  },
  autopairs = {
    enable = true
  }
}
