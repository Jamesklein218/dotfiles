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

-- Snippets
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('rafamadriz/friendly-snippets')

-- Autocompletion
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')

-- Managing LSP Server
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')

-- Configuring LSP
Plug('neovim/nvim-lspconfig')

vim.call('plug#end')

