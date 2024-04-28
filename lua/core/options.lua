vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.laststatus = 3
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.pumheight = 10 -- Pop-up window height
vim.opt.signcolumn = "yes" -- Always show the sign column, otherwise it would shift the text each time
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.wrap = false

vim.opt.showcmd = false

vim.cmd("cd %:p:h")

vim.g.mapleader = " "
