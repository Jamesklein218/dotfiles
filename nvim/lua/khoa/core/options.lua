local opt = vim.opt

-- line number 
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2 
opt.shiftwidth = 2 
opt.expandtab = true
opt.autoindent = true

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

-- window split
opt.splitright = true
opt.splitbelow = true

-- Make "-" as parrt of a word
-- opt.iskeyword:append("-")
