vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.clipboard = {
  name = "win32yank-wsl",

  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },

  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },

  cache_enabled = 0,
}

vim.opt.clipboard = "unnamedplus"

require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lsp")
require("config.mini")
require("config.treesitter")
require("config.colors")
