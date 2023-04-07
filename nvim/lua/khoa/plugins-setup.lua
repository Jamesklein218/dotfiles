local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- Tree
Plug("nvim-tree/nvim-tree.lua")

-- Icon
Plug("nvim-tree/nvim-web-devicons")

-- Status line
Plug("nvim-lualine/lualine.nvim")

-- Theme
Plug("rebelot/kanagawa.nvim")

-- Files and Finder
Plug("nvim-lua/plenary.nvim")
Plug("junegunn/fzf", { ["do"] = vim.fn["fzf#install"] })
Plug("junegunn/fzf.vim")

-- Surrounding
Plug("tpope/vim-surround")

-- Replace register ('gr')
Plug("vim-scripts/ReplaceWithRegister")

-- Comment ('gc')
Plug("numToStr/Comment.nvim")

-- Snippets
Plug("L3MON4D3/LuaSnip")
Plug("saadparwaiz1/cmp_luasnip")
Plug("rafamadriz/friendly-snippets")

-- Autocompletion
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")

-- Managing LSP Server
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")

-- Configuring LSP
Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("glepnir/lspsaga.nvim", { branch = "main" })
Plug("jose-elias-alvarez/typescript.nvim")
Plug("onsails/lspkind.nvim")

-- Auto Closing
Plug("windwp/nvim-autopairs")

-- formatting & linting
Plug("jose-elias-alvarez/null-ls.nvim")
Plug("jayp0521/mason-null-ls.nvim")

vim.call("plug#end")
