require("nvim-treesitter").setup({
	-- A list of parser names, or "all"
	ensure_installed = {
		"python",
		"nix",
		"bash",
		"lua",
		"toml",
		"json",
		"yaml",
		"markdown",
		"html",
		"javascript",
		"typescript",
		"tsx",
		"rust",
		"c",
		"cpp",
		"dockerfile",
	},
	indent = {
		enable = true,
	},

	highlight = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<leader>tv",
			node_incremental = "<leader>tn",
			scope_incremental = "<leader>tN",
			node_decremental = "<leader>tb",
		},
	},
})
