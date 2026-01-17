-- (G)it (S)tuff
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local Kevin_Fugitive = vim.api.nvim_create_augroup("Kevin_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
	group = Kevin_Fugitive,
	pattern = "*",
	callback = function()
		if vim.bo.ft ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }
		-- (G)it (P)u(S)h
		vim.keymap.set("n", "<leader>gps", function()
			vim.cmd.Git("push")
		end, opts)

		-- (G)it (P)u(L)l
		vim.keymap.set("n", "<leader>gpl", function()
			vim.cmd.Git({ "pull", "--rebase" }) -- (always rebase)
		end, opts)

		-- (G)it push to (B)ranch
		vim.keymap.set("n", "<leader>gb", ":Git push -u origin ", opts)
	end,
})

-- (G)it (G)et (L)ocal
vim.keymap.set("n", "<leader>ggl", "<cmd>diffget //2<CR>")
-- (G)it (G)et (I)ncoming
vim.keymap.set("n", "<leader>ggi", "<cmd>diffget //3<CR>")
