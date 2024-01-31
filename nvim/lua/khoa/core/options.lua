local opt = vim.opt

-- line number
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- wrapping
opt.wrap = false

-- searching
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
-- opt.clipboard:append("unnamedplus")

-- cursort style
opt.guicursor = "n-v-c-i:block"

-- window split
opt.splitright = true
opt.splitbelow = true

-- Make "-" as parrt of a word
-- opt.iskeyword:append("-")
