vim.pack.add({"https://github.com/oonamo/ef-themes.nvim"})
vim.opt.termguicolors = true

require("ef-themes").setup({
  light = "ef-spring",
  dark = "ef-winter",

  transparent = false,

  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
    classes = { bold = true },
    types = { bold = true },
  },

  modules = {
    semantic_tokens = true,
    treesitter = true,
  },
})

vim.cmd.colorscheme("ef-winter")
