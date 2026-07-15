vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

local ok, treesitter = pcall(
  require,
  "nvim-treesitter.configs"
)

if not ok then
  return
end

treesitter.setup({
  ensure_installed = {
    "bash",
    "c",
    "c_sharp",
    "css",
    "dockerfile",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "yaml",
  },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  ignore_install = {},
})
