vim.pack.add({
  "https://github.com/nvim-mini/mini.nvim",
})

require("mini.pairs").setup()
require("mini.pick").setup({
  window = {
    config = function()
      local width = math.floor(vim.o.columns * 0.35)
      local height = vim.o.lines - 2

      return {
        relative = "editor",
        anchor = "NE",

        width = width,
        height = height,

        row = 0,
        col = vim.o.columns,

        border = "single",
      }
    end,
  },
}
)
require("mini.surround").setup()
require("mini.jump2d").setup()
require("mini.files").setup()
require("mini.git").setup()
require("mini.diff").setup()
require("mini.ai").setup()
require("mini.splitjoin").setup()
require("mini.statusline").setup()
require("mini.extra").setup()

local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    { mode = { 'n', 'x' }, keys = '<Leader>' },
    { mode = 'n',          keys = '[' },
    { mode = 'n',          keys = ']' },
    { mode = { 'n', 'x' }, keys = 'g' },
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = 'n',          keys = '<C-w>' },
    { mode = { 'n', 'x' }, keys = 'z' },
    { mode = 'i',          keys = '<C-x>' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },
  },
  clues = {
    miniclue.gen_clues.square_brackets(),
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },
  window = {
    delay = 100
  }
})
