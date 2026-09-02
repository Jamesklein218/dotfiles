-- Lua
vim.keymap.set("n", "<A-m>", require("grapple").toggle)
vim.keymap.set("n", "<A-M>", require("grapple").toggle_tags)

-- User command
vim.keymap.set("n", "<A-1>", "<cmd>Grapple select index=1<cr>")
vim.keymap.set("n", "<A-2>", "<cmd>Grapple select index=2<cr>")
vim.keymap.set("n", "<A-3>", "<cmd>Grapple select index=3<cr>")
vim.keymap.set("n", "<A-4>", "<cmd>Grapple select index=4<cr>")
vim.keymap.set("n", "<A-5>", "<cmd>Grapple select index=5<cr>")
vim.keymap.set("n", "<A-6>", "<cmd>Grapple select index=6<cr>")
