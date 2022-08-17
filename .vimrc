let g:mapleader = "\<Space>"

syntax on
set number
set hidden
set nowrap
set noerrorbells
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set t_Co=256
set termguicolors
set background=dark
set cmdheight=1
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=0
set incsearch
set scrolloff=6
set clipboard=unnamedplus
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o
set noshowmode

inoremap jk <Esc>
inoremap kj <Esc>

vnoremap < <gv
vnoremap > >gv

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'

call plug#end()

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_transparent_bg = 1
"colorscheme gruvbox

" if (has("autocmd") && !has("gui_running"))
"   augroup colorset
"     autocmd!
"     let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"     autocmd ColorScheme * call codedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"   augroup END
" endif

if &term == "alacritty"        
  let &term = "xterm-256color"
endif

let g:airline#extensions#whitespace#enabled = 0

let g:codedark_transparent=1
let g:codedark_italics=1
colorscheme codedark
