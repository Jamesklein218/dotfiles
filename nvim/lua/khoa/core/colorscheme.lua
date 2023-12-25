status, _ = pcall(vim.cmd, "colorscheme kanagawa")

pcall(vim.cmd, "hi normal guibg=NONE")

if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
