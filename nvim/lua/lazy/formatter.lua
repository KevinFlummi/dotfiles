-- Formatting
return {
	"stevearc/conform.nvim",
	opts = {
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

			-- Go
			go = { "gofmt" },

			-- C / C++ / Java / ObjC
			c = { "clang_format" },
			cpp = { "clang_format" },
			java = { "clang_format" },

			-- Docker
			dockerfile = { "dockfmt" },

			-- SQL
			sql = { "sqlfluff" },
		},

		format_on_save = {
			timeout_ms = 800,
			lsp_fallback = true,
		},
	},
}
