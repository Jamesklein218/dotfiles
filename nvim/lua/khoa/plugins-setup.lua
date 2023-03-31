local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Tree
Plug('nvim-tree/nvim-tree.lua')

-- Icon 
Plug('nvim-tree/nvim-web-devicons')

-- Status line
Plug('nvim-lualine/lualine.nvim')

-- Theme
Plug('rebelot/kanagawa.nvim')

-- Files and Finder
Plug('nvim-lua/plenary.nvim')
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug('junegunn/fzf.vim')

-- Surrounding
Plug('tpope/vim-surround')

-- Replace register ('gr') 
Plug('vim-scripts/ReplaceWithRegister')

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

