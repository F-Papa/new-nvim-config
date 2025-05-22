vim.lsp.config["pyright"] = {
  cmd = { "pyright-langserver", "--stdio" },
  root_markers = { ".git" },
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        -- ignore = { "*" },
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
}

vim.lsp.config["ruff"] = {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
}

vim.lsp.enable("pyright")
vim.lsp.enable("ruff")
