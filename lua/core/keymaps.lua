vim.keymap.set("n", "<leader>a", ":set autochdir<CR>", { silent = true })
vim.keymap.set("n", "<leader>h", ":set nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "|", ":vsplit<CR>", { silent = true })
vim.keymap.set("n", "-", ":split<CR>", { silent = true })
vim.keymap.set("n", "Q", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "E", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { silent = true })
vim.keymap.set("n", "<C-x>", ":q!<CR>", { silent = true })
vim.keymap.set("n", "<C-S>", ":source %<CR>", { silent = true })

-- To exit Terminal mode into Normal mode by pressing ESC key
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

-- Remap Ctrl+p and Ctrl+n for navigation to arrow keys
vim.api.nvim_set_keymap('n', '<C-p>', '<Up>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-n>', '<Down>', {noremap = true})

