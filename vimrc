syntax on

scriptencoding utf-8
set nu
set sts=2

set nocompatible

set autoread

set cpoptions+=$

filetype plugin on
filetype indent off
filetype on

set wm=2

set number

set ruler

set cursorline

set backspace=indent,eol,start
set fileformats=unix,mac,dos
set iskeyword+=_,$,@,%,#,-,48-57,192-255

set history=1000

set showcmd

set showmode

set incsearch

set hlsearch

set ignorecase
set smartcase

set linebreak

set tabstop=2
set softtabstop=2
set shiftwidth=2

set expandtab

set autoindent

set grepprg=grep

set laststatus=2

set foldmethod=indent

set foldnestmax=10

set nofoldenable

set wildmenu

set wildmode=list:longest
set wildignore=*.o,*.obj,*~,*.swp,*/node_modules/*

set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set formatoptions=cjloq

set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set visualbell

set nobackup
set nowritebackup

set t_Co=256

set hidden

set gdefault

set invlist

set runtimepath^=~/.vim/bundle/ctrlp.vim

set re=0

source ~/.vim/config/keybindings.vim

