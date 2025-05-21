vim.api.nvim_exec(
  [[
  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})
  augroup END
]],
  false
)

--Scrolling
vim.opt.scrolloff = 5

--Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true


vim.cmd("colorscheme tokyonight-moon")
