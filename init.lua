--General settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.relativenumber = true
vim.wo.number = true -- Ensure absolute line numbers are also displayed

require('appearance')
require('keymaps')
require('lsp-attach')
require('code-completion')

--Plugins
require('plugins')
require('plugin-config/nvim-tree')
require('plugin-config/which-key')
require('plugin-config/telescope')
require('plugin-config/treesitter')
require('plugin-config/trouble')

--Language servers
require('language-servers/lua')
require('language-servers/python')
