local fn = vim.fn

-- Automatically install packer if it's not installed
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Install plugins
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'-- Packer can manage itself

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Recommended, not required.

	use 'rose-pine/neovim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'hrsh7th/cmp-cmdline'},
		{'saadparwaiz1/cmp_luasnip'},
		{'L3MON4D3/LuaSnip'},     -- Required
		{'rafamadriz/friendly-snippets'},
	}
}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	use {
		"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end
	}
end)
