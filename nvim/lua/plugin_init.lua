local function safe_require(mod)
	local ok, _ = pcall(require, mod)
	return ok
end

safe_require("plugins.themes")
safe_require("plugins.autopairs")
safe_require("plugins.cellular_automaton")
safe_require("plugins.colorizer")
safe_require("plugins.completion")
safe_require("plugins.conform")
safe_require("plugins.fugitive")
safe_require("plugins.lualine")
safe_require("plugins.telescope")
safe_require("plugins.treesitter")
safe_require("plugins.undotree")
safe_require("plugins.vimtex")
