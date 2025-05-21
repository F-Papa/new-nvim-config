--General settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.relativenumber = true
vim.wo.number = true -- Ensure absolute line numbers are also displayed

require('appearance')
require('lsp-attach')
require('code-completion')

--Plugins
require('plugins')
require('plugin-config/nvim-tree')

--Language servers
require('language-servers/lua')
