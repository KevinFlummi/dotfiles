---------------------------------------------------
---- Keybinds
---------------------------------------------------
local map = vim.keymap.set

vim.g.maplocalleader = ";"
vim.g.mapleader = ","

-- Remaps for german keyboard layout
map({ "n", "v" }, "ü", "{")
map({ "n", "v" }, "ä", "}")

-- Remap for 65key keyboard
map("n", "<Esc>", "^")

-- Open file explorer
map("n", "<leader>fd", vim.cmd.Ex)

-- Move selected line / block of text in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor position when joining lines
map("n", "J", "mzJ`z")

-- Keep cursor centered when scrolling
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Paste over currently selected text without yanking it
map("x", "<leader>p", '"_dP')

-- Yank selection to system clipboard
map({ "n", "v" }, "<leader>y", '"+y')
-- Yank line to system clipboard
map("n", "<leader>Y", '"+Y')

-- Delete to void register
map({ "n", "v" }, "<leader>d", '"_d')

-- Quickfix navigation
map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace word under cursor
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Make file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Override the matchup keybind for % for python files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.keymap.set("n", "%", "%", { noremap = true, buffer = true })
	end,
})
