vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.number = true
vim.opt.undofile = true
vim.opt.undolevels = 1000 
vim.opt.undoreload = 1000
vim.api.nvim_set_option("clipboard","unnamed")

local temp = { {"\"","\""}, {"'","'"}, {"{","}"}, {"(",")"}, {"[","]"}, {"<", ">"} }
for i = 1, #temp do
    vim.keymap.set("i", temp[i][1], temp[i][1] .. temp[i][2] .. "<Esc>i", { noremap = true })
end
