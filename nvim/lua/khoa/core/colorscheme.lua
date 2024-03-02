status, _ = pcall(vim.cmd, "colorscheme kanagawa")
-- status, _ = pcall(vim.cmd, "colorscheme aura-dark")
-- status, _ = pcall(vim.cmd, "colorscheme aura-dark-soft-text")
-- status, _ = pcall(vim.cmd, "colorscheme aura-soft-dark")
-- status, _ = pcall(vim.cmd, "colorscheme aura-soft-dark-soft-text")

pcall(vim.cmd, "hi normal guibg=NONE")

if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
