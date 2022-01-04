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
set ruler
set cmdheight=1
set mouse=a
set splitbelow
set splitright
set tabstop=2
set shiftwidth=2
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

inoremap jk <Esc>
inoremap kj <Esc>

vnoremap < <gv
vnoremap > >gv

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

nnoremap <leader>q :NERDTreeToggle<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
