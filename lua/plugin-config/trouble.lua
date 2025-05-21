require("trouble").setup({})
vim.keymap.set("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>xX", ":Trouble diagnostics toggle filter.buf=0<CR>",
  { desc = "Buffer Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>cs", ":Trouble symbols focus=false<CR>", { desc = "Symbols (Trouble)" })
vim.keymap.set("n", "<leader>cl", ":Trouble lsp toggle focus=false win.position=right<CR>",
  { desc = "LSP Definitions / references / ... (Trouble)" })
vim.keymap.set("n", "<leader>xL", ":Trouble loclist toggle<CR>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", ":Trouble qflist toggle<CR>", { desc = "Quickfix List (Trouble)" })
