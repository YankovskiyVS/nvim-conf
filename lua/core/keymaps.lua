local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Basic
map("i", "jk", "<Esc>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>w", ":w<CR>", opts)

-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- Telescope
map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)

-- Grep in current file
map("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)

-- Grep in working directory
map("n", "<leader>/", "<cmd>Telescope live_grep<cr>", opts)

-- Neo-tree
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)

-- Terminal hotkey
map("n", "<leader>t", "<cmd>ToggleTerm<cr>", opts)
map("t", "<Esc>", [[<C-\><C-n>]], opts)
