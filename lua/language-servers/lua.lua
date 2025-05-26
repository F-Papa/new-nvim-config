local lspconfig = require('lspconfig')
local capabilities = require('blink.cmp').get_lsp_capabilities()


lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "vim",
          "require",
        },
      },
    }
  },
  capabilities = capabilities
}

vim.lsp.enable('lua_ls')
