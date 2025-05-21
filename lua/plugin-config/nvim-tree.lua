require("nvim-tree").setup({
  view = { adaptive_size = true },
  update_focused_file = { enable = true },
})

vim.api.nvim_set_keymap("n", "\\", [[:NvimTreeToggle<CR>]], {})
