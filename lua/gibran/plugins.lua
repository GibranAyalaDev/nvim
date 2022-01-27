-- plugins for gibran
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
	use("wbthomason/packer.nvim") -- Let packer manage itself

	use("LunarVim/onedarker.nvim") -- colorscheme
	use("morhetz/gruvbox")
	use("navarasu/onedark.nvim")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/nvim-cmp")

	use("ellisonleao/glow.nvim")

	use("wfxr/minimap.vim")

	use("lukas-reineke/indent-blankline.nvim")

	-- linter
	use("jose-elias-alvarez/null-ls.nvim")

	use({
		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",
	}) -- LSP
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	use("goolord/alpha-nvim")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	use("windwp/nvim-autopairs")

	use("antoinemadec/FixCursorHold.nvim")

	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use("norcalli/nvim-colorizer.lua")
end)
