let mapleader = " "

call plug#begin()
Plug 'tpope/vim-surround'
call plug#end()

if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
endif
