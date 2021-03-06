set nocompatible
set termguicolors

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tpope/vim-surround'
  Plugin 'raimondi/delimitmate'
  Plugin 'pangloss/vim-javascript'
  Plugin 'othree/html5.vim'
  Plugin 'alvan/vim-closetag'

call vundle#end()
filetype plugin indent on
syntax on

let g:airline_powerline_fonts=1
let g:airline_theme="aurora"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'

set background=light
set number
set laststatus=2
set mouse=a
set encoding=utf-8
set t_Co=256

set ttimeoutlen=5

set expandtab
set shiftwidth=2
set softtabstop=0
set smarttab

" highlighting
hi Visual term=reverse cterm=reverse guibg=Grey
