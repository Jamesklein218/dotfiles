-- keymap setup
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

-- new line without Insert Mode
keymap.set("n", "O", "O<Esc>")
keymap.set("n", "o", "o<Esc>")

-- windows setting
keymap.set("n", "<leader>c", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>n", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>p", ":tabp<CR>") --  go to previous tab

-- nvim-tree keymap
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>o", ":NvimTreeFindFileToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find file with "<file name"
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

keymap.set("n", "<leader>so", "<cmd>SymbolsOutline<cr>") -- SymbolOutline
