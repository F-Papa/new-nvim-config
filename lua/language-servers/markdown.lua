vim.lsp.config["markdown_ls"] = {
  cmd = { "marksman", "server" },
  filetypes = { "markdown", "markdown.mdx" },
  root_markers = { ".marksman.toml", ".git" },
}

vim.lsp.enable("markdown_ls")
