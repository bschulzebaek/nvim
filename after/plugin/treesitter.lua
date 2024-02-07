vim.defer_fn(function()
    require('nvim-treesitter.configs').setup {
        ensure_installed = {
            --'lua',
            --'rust',
            --'php',
            --'javascript',
            --'typescript',
            --'bash',
            --'html',
            --'css',
            --'vue',
            --'scss',
            --'xml',
            --'yaml',
            --'json'
        },

        auto_install = false,
        sync_install = false,
        ignore_install = {},
        modules = {},
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
    }
end, 0)
