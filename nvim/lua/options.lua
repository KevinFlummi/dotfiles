---------------------------------------------------
---- Options
---------------------------------------------------
local set = vim.opt

-- set title of window to current file
set.title = true

-- enable mouse support
set.mouse = a

-- line numbers
set.number = true
set.relativenumber = true

-- appearance
set.background = "dark"
set.cursorline = true
set.wrap = true
set.signcolumn = "yes"
set.colorcolumn = "80"

set.scrolloff = 8

-- search
set.ignorecase = true
set.smartcase = true
set.incsearch = true
set.hlsearch = true

-- backups
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- tab behaviour
set.expandtab = true
set.smartindent = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4

-- terminal colors
set.termguicolors = true

-- faster cursor hold
set.updatetime = 50

-- spelling (install aspell separately)
vim.opt.spell = true
vim.opt.spelllang = { "en_us", "de_de" }
