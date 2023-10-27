local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>ex", ":Lex 20<cr>", opts)
keymap("n", "<leader>ss", ":w<cr>", opts)
keymap("n", "<leader>sq", ":wq<cr>", opts)
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

keymap("i", "hh", "<ESC>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
