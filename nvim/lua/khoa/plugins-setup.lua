local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- Git Blamer
Plug("f-person/git-blame.nvim")

-- Tab bar
Plug("romgrk/barbar.nvim")

-- Tmux navigator
Plug("christoomey/vim-tmux-navigator")

-- Git signs (Git Lens for nvim)
Plug("lewis6991/gitsigns.nvim")

-- Smoother scrolling
-- Plug("karb94/neoscroll.nvim")

-- Discord Presense
Plug("andweeb/presence.nvim")

-- Tree
Plug("nvim-tree/nvim-tree.lua")

-- Icon
Plug("nvim-tree/nvim-web-devicons")

-- Status line
Plug("nvim-lualine/lualine.nvim")

-- Theme
Plug("rebelot/kanagawa.nvim")
-- Plug("daltonmenezes/aura-theme", { rtp = "packages/neovim" })
Plug("techtuner/aura-neovim")

-- Files and Finder
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope-fzf-native.nvim", {
	["do"] = vim.fn["make"],
})
Plug("nvim-telescope/telescope.nvim", { tag = "0.1.3" })

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
Plug("nvimdev/lspsaga.nvim", { branch = "main" })
Plug("jose-elias-alvarez/typescript.nvim")
Plug("onsails/lspkind.nvim")

-- Auto Closing
Plug("windwp/nvim-autopairs")

-- formatting & linting
Plug("jose-elias-alvarez/null-ls.nvim")
Plug("jayp0521/mason-null-ls.nvim")

-- Tree Sitter
Plug("nvim-treesitter/nvim-treesitter", {
	run = function()
		local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		ts_update()
	end,
})

-- Document outlining
Plug("simrat39/symbols-outline.nvim")

vim.call("plug#end")
