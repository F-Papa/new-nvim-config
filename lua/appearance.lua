vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})


--Scrolling
vim.opt.scrolloff = 5

--Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true


vim.cmd("colorscheme tokyonight-moon")
vim.cmd("highlight LineNr ctermfg=12 guifg=#e6e6e6")
vim.cmd("highlight LineNrAbove ctermfg=12 guifg=#a6a6a6")
vim.cmd("highlight LineNrBelow ctermfg=12 guifg=#a6a6a6")
