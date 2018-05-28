set nocompatible

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

filetype plugin indent on

syntax on
set lazyredraw
set showmode
set wildmenu
set wrapscan
set ch=2

set cpoptions=ces$

set incsearch
set hlsearch

set expandtab
set tabstop=2
set shiftwidth=2

set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set laststatus=2
set mousehide
set history=100
set scrolloff=8
set virtualedit=all

set showfulltag
set tags=./tags,tags
set background=dark
colorscheme desert
set backspace=indent,eol,start
set hidden
set confirm
set nrformats+=alpha


call plug#begin('~/.vim/plugged')
call plug#end()
