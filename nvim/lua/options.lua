---------------------------------------------------
---- Options
---------------------------------------------------
local set = vim.opt

-- basic
set.title = true
set.mouse = a
set.background = "dark"
set.cursorline = true
set.hidden = true
set.number = true
set.relativenumber = true
set.wildmenu = true
set.clipboard:append("unnamedplus")

set.backspace = "indent,eol,start"
set.scrolloff = 8
set.signcolumn = "yes"
set.colorcolumn = "80"

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
