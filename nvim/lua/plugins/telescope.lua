require("telescope").setup({})

local builtin = require("telescope.builtin")
-- (F)ind (F)iles
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- (F)ind (G)it files
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
-- (F)ind (R)egex
vim.keymap.set("n", "<leader>fr", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- (F)ind (W)ord under cursor
vim.keymap.set("n", "<leader>fw", function()
	local word = vim.fn.expand("<cword>")
	builtin.grep_string({ search = word })
end)
-- (F)ind (W)ord under cursor (including special characters)
vim.keymap.set("n", "<leader>fW", function()
	local word = vim.fn.expand("<cWORD>")
	builtin.grep_string({ search = word })
end)

-- (F)ind (B)uffers
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
-- (F)ind (H)elp
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
