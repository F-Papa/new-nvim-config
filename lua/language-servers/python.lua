vim.lsp.config['pyls'] = {
  cmd = { 'basedpyright-langserver', '--stdio' },
  filetypes = { 'python' },
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'openFilesOnly',
      },
    },
  },
}

vim.lsp.enable('pyls')
