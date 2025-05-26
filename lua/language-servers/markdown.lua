local lspconfig = require('lspconfig')
local capabilities = require('blink.cmp').get_lsp_capabilities()

lspconfig.marksman.setup {
  capabilities = capabilities
}
