local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<leader>bn", "<cmd>bnext<CR>", {
  desc = "Next buffer",
})

map("n", "<leader>bp", "<cmd>bprevious<CR>", {
  desc = "Previous buffer",
})

map("n", "<leader>bd", "<cmd>bdelete<CR>", {
  desc = "Delete buffer",
})

map("n", "<leader>bl", "<cmd>ls<CR>", {
  desc = "List buffers",
})

map("n", "<leader>e", "<cmd>Explore<CR>", {
  desc = "File explorer",
})

map("n", "<leader>sf", ":find ", {
  desc = "Find file",
  silent = false,
})

map("n", "<leader>sg", ":grep ", {
  desc = "Search project",
  silent = false,
})

map("n", "<leader>qo", "<cmd>copen<CR>", {
  desc = "Open quickfix",
})

map("n", "<leader>qc", "<cmd>cclose<CR>", {
  desc = "Close quickfix",
})

map("n", "]q", "<cmd>cnext<CR>", {
  desc = "Next quickfix item",
})

map("n", "[q", "<cmd>cprevious<CR>", {
  desc = "Previous quickfix item",
})

map("n", "]l", "<cmd>lnext<CR>", {
  desc = "Next location item",
})

map("n", "[l", "<cmd>lprevious<CR>", {
  desc = "Previous location item",
})

map("n", "lo", "<cmd>lopen<CR>", {
  desc = "Open location list",
})

map("n", "lc", "<cmd>lclose<CR>", {
  desc = "Close location list",
})

-- Leave terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>", {
  desc = "Exit terminal mode",
})

vim.keymap.set("n", "<leader>dq", function()
  vim.diagnostic.setqflist({
    severity = {
      min = vim.diagnostic.severity.WARN,
    },
    open = true,
    title = "Errors and warnings",
  })
end, { desc = "Diagnostics to quickfix" })

vim.diagnostic.config({
  severity_sort = true,
  virtual_text = {
    severity = {
      min = vim.diagnostic.severity.WARN,
    },
  },
  float = {
    border = "rounded",
    source = "if_many",
  },
})
