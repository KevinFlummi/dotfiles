-- Create keymapping
-- LspAttach: After an LSP Client performs "initialize" and attaches to a buffer.
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local keymap = vim.keymap
		local lsp = vim.lsp
		local bufopts = { buffer = args.buf, noremap = true, silent = true }

		-- LSP buffer mappings
		keymap.set("n", "gr", lsp.buf.references, bufopts)
		keymap.set("n", "gd", lsp.buf.definition, bufopts)
		keymap.set("n", "<leader>ca", lsp.buf.code_action, bufopts)
		keymap.set("n", "<leader>rn", lsp.buf.rename, bufopts)
		keymap.set("n", "K", lsp.buf.hover, bufopts)
		keymap.set("n", "<C-h>", lsp.buf.signature_help, bufopts)

		-- Diagnostic mappings
		keymap.set("n", "<leader>dv", function()
			vim.diagnostic.open_float()
		end, bufopts)
		keymap.set("n", "<leader>dn", function()
			vim.diagnostic.jump({ count = 1, float = true })
		end, bufopts)
		keymap.set("n", "<leader>dp", function()
			vim.diagnostic.jump({ count = -1, float = true })
		end, bufopts)
	end,
})

vim.diagnostic.config({
	-- update_in_insert = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = true,
		header = "",
		prefix = "",
	},
})

vim.lsp.enable({ "ty" })
vim.lsp.enable({ "nixd" })
vim.lsp.enable({ "bashls" })
vim.lsp.enable({ "lua_ls" })
vim.lsp.enable({ "marksman" })
vim.lsp.enable({ "rust_analyzer" })
vim.lsp.enable({ "clangd" })
vim.lsp.enable({ "texlab" })
