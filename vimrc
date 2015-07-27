set shell=/bin/bash  " for fish shell

set nocompatible
set nowrap
set nobackup
set noswapfile
set showcmd
set foldmethod=marker

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'git@github.com:VundleVim/Vundle.vim'
Plugin 'git@github.com:flazz/vim-colorschemes'
Plugin 'git@github.com:bling/vim-airline'
Plugin 'git@github.com:mbbill/undotree.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'

call vundle#end()
filetype plugin indent on

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

set background=dark
colorscheme molokai

set laststatus=2
let g:airline_theme='molokai'
let g:airline_powerline_fonts=1

set undofile
set undodir=$HOME/.undo

map <silent> <F12> :NERDTreeToggle %<CR>
let g:NERDTreeIgnore=['\.pyc$']
