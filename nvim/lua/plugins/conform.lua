require("conform").setup({
	formatters_by_ft = {
		-- Python
		python = { "ruff_format" },

		-- Nix
		nix = { "alejandra" },

		-- Shell
		sh = { "shfmt" },
		bash = { "shfmt" },

		-- Lua
		lua = { "stylua" },

		-- TOML
		toml = { "taplo" },

		-- JSON / JSONC
		json = { "prettier" },
		jsonc = { "prettier" },

		-- YAML
		yaml = { "prettier" },

		-- Markdown
		markdown = { "prettier" },

		-- HTML
		html = { "prettier" },

		-- JavaScript / TypeScript
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },

		-- Rust
		rust = { "rustfmt" },

		-- C / C++ / ObjC
		c = { "clang_format" },
		cpp = { "clang_format" },

		-- Haskell
		haskell = { "ormolu" },

		-- Docker
		dockerfile = { "dockfmt" },

		-- LaTeX
		tex = { "latexindent" },
	},

	format_on_save = {
		timeout_ms = 800,
		lsp_fallback = true,
	},
})
