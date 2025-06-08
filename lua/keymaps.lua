--Quickfix
vim.keymap.set("n", "<M-j>", ":cnext<CR>")
vim.keymap.set("n", "<M-k>", ":cprev<CR>")
vim.keymap.set("n", "<M-q>", ":copen<CR>")

--Diagnostics
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setqflist, { desc = "Send Diagnostics to [Q]uickfix" })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Send Diagnostics to [L]oclist" })

--Windows
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")
vim.keymap.set("n", "<C-q>", "<C-W>q")

--Scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>")

--Terminal
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-W>h")
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-W>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-W>k")
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-W>l")
vim.keymap.set("t", "<C-q>", "<C-\\><C-n><C-W>q")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
