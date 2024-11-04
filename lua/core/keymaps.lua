vim.keymap.set("n", "<leader>h", ":set nohlsearch!<CR>", { silent = true })
vim.keymap.set("n", "|", ":vsplit<CR>", { silent = true })
vim.keymap.set("n", "-", ":split<CR>", { silent = true })
vim.keymap.set("n", "Q", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "E", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { silent = true })
vim.keymap.set("n", "<C-q>", ":bd!<CR>", { silent = true })
vim.keymap.set("n", "<C-s>", ":source %<CR>", { silent = true })
vim.keymap.set("n", "<a-z>", ":set wrap!<CR>", { silent = true })         -- Toggle Word Wrap

-- To exit Terminal mode into Normal mode by pressing ESC key
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

vim.api.nvim_set_keymap('c', '<C-j>', '<C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<C-k>', '<C-p>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-j>', '<C-e>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-y>', { noremap = true, silent = true })

vim.cmd('nnoremap <Left>  :echoe "Use h"<CR>')
vim.cmd('nnoremap <Right> :echoe "Use l"<CR>')
vim.cmd('nnoremap <Up>    :echoe "Use k"<CR>')
vim.cmd('nnoremap <Down>  :echoe "Use j"<CR>')
vim.cmd('inoremap <Left>  <ESC>:echoe "Use h"<CR>')
vim.cmd('inoremap <Right> <ESC>:echoe "Use l"<CR>')
vim.cmd('inoremap <Up>    <ESC>:echoe "Use k"<CR>')
vim.cmd('inoremap <Down>  <ESC>:echoe "Use j"<CR>')

vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true, silent = true })
