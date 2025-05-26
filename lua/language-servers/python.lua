local lspconfig = require('lspconfig')
local capabilities = require('blink.cmp').get_lsp_capabilities()

lspconfig.pyright.setup {
  capabilities = capabilities
}

lspconfig.ruff.setup {
  capabilities = capabilities
}
