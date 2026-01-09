require("plugins")

---------------------------------------------------
---- Options
---------------------------------------------------
local set = vim.opt

-- basic
set.title
set.background=dark
set.mouse=a
set.cursorline
set.hidden
set.number
set.relativenumber
set.wildmenu
set.clipboard+=unnamedplus
set.completeopt=noinsert,menuone,noselect

-- tab behaviour
set.expandtab
set.autoindent
set.shiftwidth=4
set.tabstop=4


-- terminal colors
set.termguicolors
set.colorcolumn=80

set scrolloff=8

---------------------------------------------------
---- Keybinds
---------------------------------------------------
local map = vim.keymap.set

vim.g.mapleader=","
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
