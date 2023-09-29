local options = {
	tabstop = 4,
	shiftwidth = 4,
	expandtab = false,
	number = true,
	undofile = true,
	wrap = true,
	linebreak = true,
	clipboard = "unnamed",
	backup = false,
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	swapfile = false,
	splitbelow = true,
	smartindent = true,
	numberwidth = 1,
	termguicolors = true,
	signcolumn = 'no',
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
