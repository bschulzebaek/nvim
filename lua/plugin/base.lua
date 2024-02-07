return {
    -- Fade inactive buffers
    "TaDaa/vimade",
    "nvim-tree/nvim-web-devicons",
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            vim.cmd("colorscheme kanagawa")
        end
    },

    {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},

    -- Automatic pairs & closing brackets
    {
        "m4xshen/autoclose.nvim",
        config = function() 
            require("autoclose").setup()
        end
    },

    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'auto',
                component_separators = '|',
                section_separators = '',
            },
        },
    },

    "nvim-lua/plenary.nvim",
    "yegappan/mru",
    "RishabhRD/popfix",
    "mbbill/undotree",
    'tpope/vim-sleuth',

    {
        "nvim-tree/nvim-tree.lua",
        init = function()
            require("nvim-tree").setup()
        end,
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    },

    {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup({
                log_level = "error",
            })
        end
    }
}

