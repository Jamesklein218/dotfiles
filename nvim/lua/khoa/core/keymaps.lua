vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- keymap setup

-- new line without Insert Mode
keymap.set("n", "o", "O<Esc>")
keymap.set("n", "O", "o<Esc>")

-- NERDTree keymap setup 
keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>")
keymap.set("n", "<C-n>", ":NERDTreeFocus<CR>")
keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")
