local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'rust_analyzer',
    'intelephense',
    'tsserver',
  },
  handlers = {
    lsp_zero.default_setup,
  },
  automatic_installation = true,
})


cmp.setup({
  preselect = 'item',
  formatting = require('lsp-zero').cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    --['<Tab>'] = cmp_action.tab_complete(),
  })
})

