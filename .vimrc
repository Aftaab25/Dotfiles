let g:mapleader = "\<Space>"
let g:python_recommended_style = 0
let g:loaded_matchparen=1
filetype plugin indent on

syntax on
set number relativenumber
set hidden
set nowrap
set noerrorbells
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set termguicolors
set ruler
set cmdheight=1
set mouse=a
set splitbelow
set splitright
set t_Co=256
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=0
set incsearch
set scrolloff=6
set background=dark
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

inoremap jk <Esc>
inoremap kj <Esc>

vnoremap < <gv
vnoremap > >gv

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'

call plug#end()
