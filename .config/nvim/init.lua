vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.number = true
vim.opt.undofile = true
vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.undolevels = 1000 
vim.opt.undoreload = 1000
vim.api.nvim_set_option("clipboard","unnamed")

vim.api.nvim_set_keymap('n', 'h', 'b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'l', 'e', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '0', 'g0', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '$', 'g$', {noremap = true, silent = true})

vim.api.nvim_set_keymap('o', 'k', 'gk', {noremap = true, silent = true})
vim.api.nvim_set_keymap('o', 'j', 'gj', {noremap = true, silent = true})

local temp = { {"\"","\""}, {"'","'"}, {"{","}"}, {"(",")"}, {"[","]"}, {"<", ">"} }
for i = 1, #temp do
    vim.keymap.set("i", temp[i][1], temp[i][1] .. temp[i][2] .. "<Esc>i", { noremap = true })
end
