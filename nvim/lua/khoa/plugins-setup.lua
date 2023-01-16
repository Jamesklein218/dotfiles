local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- NERDTree
Plug('preservim/nerdtree')

-- Theme
Plug('bluz71/vim-moonfly-colors',{ branch = 'cterm-compat' }) 

-- Surrounding
Plug('tpope/vim-surround')

-- Replace register ('gr') 
Plug('christoomey/vim-tmux-navigator') -- tmux & split window navigation

-- Comment ('gc')
Plug('numToStr/Comment.nvim')

-- Auto Completing
Plug("hrsh7th/nvim-cmp") -- completion plugin
Plug("hrsh7th/cmp-buffer") -- source for text in buffer
Plug("hrsh7th/cmp-path") -- source for file system paths

-- snippets
Plug("L3MON4D3/LuaSnip") -- snippet engine
Plug("saadparwaiz1/cmp_luasnip") -- for autocompletion
Plug("rafamadriz/friendly-snippets") -- useful snippets

vim.call('plug#end')

