require("nvim-treesitter.configs").setup({
  sync_install = false,
  ignore_install = {},
  auto_install = true,
  modules = {},
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline",
  },
  highlight = {
    enable = true,
  },
})

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo.foldlevel = 100
