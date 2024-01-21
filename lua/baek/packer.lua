vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		"rebelot/kanagawa.nvim",
		as = "kanagawa",
		config = function()
			vim.cmd("colorscheme kanagawa")
		end
	})

	use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

	use "nvim-lua/plenary.nvim" 
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use "TaDaa/vimade"
	use "mbbill/undotree"
	use "tpope/vim-fugitive"

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			--- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

	use "norcalli/nvim-colorizer.lua"

	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

        use "nvim-tree/nvim-tree.lua"
        use "nvim-tree/nvim-web-devicons"

        use 'RishabhRD/popfix'
        use 'RishabhRD/nvim-cheat.sh'

        use 'yegappan/mru'

        use({
            'rebelot/terminal.nvim',
            config = function()
                require("terminal").setup({
                    autoclose = false,
                })
            end
        })

        use 'github/copilot.vim'

        use {
            "aznhe21/actions-preview.nvim",
            config = function()
                vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
            end,
        }
end)
