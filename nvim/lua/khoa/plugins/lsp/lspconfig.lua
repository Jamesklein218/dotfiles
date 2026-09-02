local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
    return
end

local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not ok_cmp then
    return
end

local util = require("lspconfig.util")

local capabilities = cmp_nvim_lsp.default_capabilities()

--------------------------------------------------------------------------------
-- Diagnostics
--------------------------------------------------------------------------------

local signs = {
    Error = " ",
    Warn = " ",
    Hint = "󰠠 ",
    Info = " ",
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {
        text = icon,
        texthl = hl,
        numhl = "",
    })
end

--------------------------------------------------------------------------------
-- LSP Attach
--------------------------------------------------------------------------------

local on_attach = function(_, bufnr)
    local opts = {
        noremap = true,
        silent = true,
        buffer = bufnr,
    }

    local map = vim.keymap.set

    map("n", "gf", "<cmd>Lspsaga finder<CR>", opts)
    map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
    map("n", "gD", "<cmd>Lspsaga goto_definition<CR>", opts)

    map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

    map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
    map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)

    map("n", "gL", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
    map("n", "gC", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
end

--------------------------------------------------------------------------------
-- Default Config
--------------------------------------------------------------------------------

local default = {
    capabilities = capabilities,
    on_attach = on_attach,
}

--------------------------------------------------------------------------------
-- Simple Servers
--------------------------------------------------------------------------------

local servers = {
    "html",
    "cssls",
    "tailwindcss",
    "dockerls",
    "docker_compose_language_service",
    "drools_lsp",
    "zls",
}

for _, server in ipairs(servers) do
    if lspconfig[server] then
        lspconfig[server].setup(default)
    end
end

--------------------------------------------------------------------------------
-- TypeScript
--------------------------------------------------------------------------------

if lspconfig.ts_ls then
    lspconfig.ts_ls.setup(default)
elseif lspconfig.tsserver then
    lspconfig.tsserver.setup(default)
end

--------------------------------------------------------------------------------
-- Emmet
--------------------------------------------------------------------------------

lspconfig.emmet_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {
        "html",
        "css",
        "scss",
        "sass",
        "less",
        "javascriptreact",
        "typescriptreact",
        "svelte",
    },
})

--------------------------------------------------------------------------------
-- Lua
--------------------------------------------------------------------------------

lspconfig.lua_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
        },
    },
})

--------------------------------------------------------------------------------
-- Go
--------------------------------------------------------------------------------

lspconfig.gopls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = { "gopls" },
    filetypes = {
        "go",
        "gomod",
        "gowork",
        "gotmpl",
    },
    root_dir = util.root_pattern(
        "go.work",
        "go.mod",
        ".git"
    ),
    single_file_support = true,
})

--------------------------------------------------------------------------------
-- Python
--------------------------------------------------------------------------------

lspconfig.pyright.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
            },
        },
    },
})

--------------------------------------------------------------------------------
-- Clang
--------------------------------------------------------------------------------

lspconfig.clangd.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = {
        "clangd",
        "--offset-encoding=utf-16",
    },
})

--------------------------------------------------------------------------------
-- Drools
--------------------------------------------------------------------------------

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.drl",
    command = "set filetype=drools",
})
