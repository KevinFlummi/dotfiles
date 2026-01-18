-- Use latexmk for compilation
vim.g.vimtex_compiler_method = "latexmk"

-- Use Zathura as PDF viewer (works headless + terminal)
vim.g.vimtex_view_method = "zathura"

-- Do not auto-open quickfix unless there are errors
vim.g.vimtex_quickfix_mode = 0

-- Folding for sections/environments (optional, lightweight)
vim.g.vimtex_fold_enabled = 1

-- Keep default key mappings (compilation, view, etc.)
vim.g.vimtex_mappings_enabled = 1
