---------------------------------------------------
---- Keybinds
---------------------------------------------------
local map = vim.keymap.set

vim.g.mapleader = ","
map("n", "ü", "{")
map("n", "ä", "{")
map("v", "ü", "{")
map("v", "ä", "{")

map("n", "<leader>fd", vim.cmd.Ex)
