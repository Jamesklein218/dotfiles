-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"html",
		"cssls",
		"tailwindcss",
		"lua_ls",
		"emmet_ls",
		"clangd", -- Cpp
		"marksman", -- Markdown
		"gopls", -- Golang
		"docker_compose_language_service", -- Docker compose
		"dockerls", -- Dockerfile
		"zls", -- Zig
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"clang-format", -- cpp formatter
		"cpplint", -- cpp linter
		"gofumpt", -- Go formatting
		"goimports", -- formatting + automatic installation
		"golangci-lint",
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
