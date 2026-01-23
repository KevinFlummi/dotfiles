require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
})

require("rose-pine").setup({
	variant = "dawn",
	dark_variant = "moon",
	disable_background = true,
})

vim.cmd.colorscheme("rose-pine-moon")

-- transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
