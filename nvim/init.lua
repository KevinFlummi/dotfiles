require("plugins")

---------------------------------------------------
---- Options
---------------------------------------------------
local set = vim.opt

-- basic
set.title = true
set.background = "dark"
set.mouse = a
set.cursorline = true
set.hidden = true
set.number = true
set.relativenumber = true
set.wildmenu = true
set.clipboard:append("unnamedplus")

set.backspace = "indent,eol,start"
set.scrolloff = 8

-- tab behaviour
set.expandtab = true
set.autoindent = true
set.shiftwidth = 4
set.tabstop = 4

-- terminal colors
set.termguicolors = true
set.colorcolumn = "80"

-- faster cursor hold
set.updatetime = 50

---------------------------------------------------
---- Keybinds
---------------------------------------------------
local map = vim.keymap.set

vim.g.mapleader = ","
map("n", "ü", "{")
map("n", "ä", "{")
map("v", "ü", "{")
map("v", "ä", "{")
if vim.fn.exists(":Telescope") == 2 then
	map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
	map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
	map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
	map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
end
