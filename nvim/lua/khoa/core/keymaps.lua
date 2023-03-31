-- keymap setup
vim.g.mapleader = ','

local keymap = vim.keymap -- for conciseness

-- new line without Insert Mode
keymap.set("n", "o", "O<Esc>")
keymap.set("n", "O", "o<Esc>")

-- windows setting
keymap.set("n", "<leader>x", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>n", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>p", ":tabp<CR>") --  go to previous tab

-- nvim-tree keymap
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>") -- toggle file explorer

-- fzf
keymap.set("n", "<leader>ff", ":Files<CR>") -- toggle file explorer
keymap.set("n", "<leader>fg", ":GFiles<CR>") -- toggle file explorer

