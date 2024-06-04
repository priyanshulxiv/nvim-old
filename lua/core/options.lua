vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.laststatus = 3
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.pumheight = 10 -- Pop-up window height
vim.o.pumwidth = 30
vim.opt.signcolumn = "yes" -- Always show the sign column, otherwise it would shift the text each time
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.autochdir = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true

vim.opt.showcmd = false

vim.cmd("cd %:p:h")

vim.g.mapleader = " "
vim.o.shortmess = vim.o.shortmess .. 'I' -- Disables Neovim intro message screen

-- Set indentation settings for Python files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    command = "setlocal tabstop=2 shiftwidth=2 expandtab"
})
