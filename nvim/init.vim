""""""""""""""""""""""""""""""""""""""""""""""""""
""" Options
""""""""""""""""""""""""""""""""""""""""""""""""""

"basic
set title
set background=dark
set mouse=a
set cursorline
set hidden
set number
set relativenumber
set wildmenu
set clipboard+=unnamedplus
set completeopt=noinsert,menuone,noselect

"tab behaviour
set expandtab
set autoindent
set shiftwidth=4
set tabstop=4

"extension-specific behaviour if available
filetype plugin indent on
syntax on

"terminal colors
set termguicolors
set colorcolumn=80

set scrolloff=8

""""""""""""""""""""""""""""""""""""""""""""""""""
""" Keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","
nnoremap ü {
nnoremap ä }
vnoremap ü {
vnoremap ä }

call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'
call plug#end()
