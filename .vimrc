" kj to exit insert mode
imap kj <Esc>

" Use Vim settings, rather than Vi settings
set nocompatible

" Do not keep any history
set viminfo='0,:0,<0,@0,f0
set nobackup
set nowb
set noswapfile

" Allow backspacing over everything in INSERT mode
set backspace=indent,eol,start

" Show ruler and command visual aid
set ruler
set showcmd

" Disable bells
set noerrorbells

" Set partial search and result highlighting
set incsearch
set hlsearch

" Ignore case when searching
set ignorecase
set smartcase

" Show matching bracets
set showmatch

" Highlight the cursor line
set cursorline

" Set default vertical split to right
set splitright

" Set soft tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" Show line number and listchars
set rnu

" Keep cursor in middle
set scrolloff=99
