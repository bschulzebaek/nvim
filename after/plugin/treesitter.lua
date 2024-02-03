vim.defer_fn(function()
    require('nvim-treesitter.configs').setup {
        ensure_installed = {
            'lua',
            'rust',
            'php',
            'javascript',
            'typescript',
            'bash',
            'html',
            'css',
            'vue',
            'scss',
            'xml',
            'yaml',
            'json'
        },

        auto_install = false,
        sync_install = false,
        ignore_install = {},
        modules = {},
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<c-space>',
                node_incremental = '<c-space>',
                scope_incremental = '<c-s>',
                node_decremental = '<M-space>',
            },
        },
        autotag = { enable = true },
    }
end, 0)
