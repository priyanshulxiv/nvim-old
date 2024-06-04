vim.keymap.set("n", "<leader>h", ":set nohlsearch!<CR>", { silent = true })
vim.keymap.set("n", "|", ":vsplit<CR>", { silent = true })
vim.keymap.set("n", "-", ":split<CR>", { silent = true })
vim.keymap.set("n", "Q", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "E", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { silent = true })
vim.keymap.set("n", "<C-x>", ":bd!<CR>", { silent = true })
vim.keymap.set("n", "<C-S>", ":source %<CR>", { silent = true })
vim.keymap.set("n", "<a-z>", ":set wrap!<CR>", { silent = true }) -- Toggle Word Wrap

-- Remap for dealing with word wrap
vim.keymap.set('n', '<up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', '<down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- To exit Terminal mode into Normal mode by pressing ESC key
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

-- Remap Ctrl+p and Ctrl+n for navigation to arrow keys
vim.cmd('cnoremap <up> <c-p>')
vim.cmd('cnoremap <down> <c-n>')
