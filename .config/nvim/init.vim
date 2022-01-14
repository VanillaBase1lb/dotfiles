let mapleader = " "
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0 " Disable default mappings

call plug#begin()
Plug 'asvetliakov/vim-easymotion'
Plug 'tpope/vim-surround'
call plug#end()

nmap f <Plug>(easymotion-s)
if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
endif
