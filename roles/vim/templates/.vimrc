set encoding=utf-8
set tabstop=4
set shiftwidth=4
set laststatus=2
set expandtab
set smarttab
set autoindent
set smartindent
set nowrap
set smartcase
set showmatch
set title
set ruler
set et
set relativenumber
set incsearch
set hlsearch
set autoread
set autowrite
set nobackup
set nowritebackup
set noswapfile
set nocompatible
set hidden
filetype off
syntax on

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'godlygeek/tabular'
Plug 'powerline/powerline'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'

call plug#end()

let g:molokai_original = 1

" NERDTree Configuration
" -- start with vim if arg is directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" -- close NERDTree if it's the only active tile in vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Key Mappings
map <C-n> :NERDTreeToggle<CR>