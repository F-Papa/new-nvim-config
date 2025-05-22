vim.lsp.config["typescript-ls"] = {
  cmd = { "typescript-language-server", "--stdio" },
  init_options = {
    preferences = {
      importModuleSpecifierPreference = "relative",
      importModuleSpecifierEnding = "minimal",
    },
  },
}
vim.lsp.enable("typescript-ls")
