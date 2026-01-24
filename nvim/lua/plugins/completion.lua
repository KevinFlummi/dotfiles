require("blink.cmp").setup({
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		--default = { "copilot", "lsp", "path", "snippets", "buffer" },
		--providers = {
		--	copilot = {
		--		name = "copilot",
		--		module = "blink-copilot",
		--		score_offset = 100,
		--		async = true,
		--	},
		--},
	},

	keymap = {
		-- Preset: Use no presets
		preset = "default",
		-- These are the defaults:
		["<C-h>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-e>"] = { "hide", "fallback" },
		["<C-y>"] = { "select_and_accept", "fallback" },

		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<C-p>"] = { "select_prev", "fallback_to_mappings" },
		["<C-n>"] = { "select_next", "fallback_to_mappings" },

		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },

		["<Tab>"] = { "snippet_forward", "fallback" },
		["<S-Tab>"] = { "snippet_backward", "fallback" },

		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		--]]
	},
})
