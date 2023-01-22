" This is only necessary for set termguicolors.
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set ignorecase
set mouse=a
set tabline=2
set smartcase
set smartindent
set splitbelow
set splitright
set noswapfile
set termguicolors
set tabstop=4
set shiftwidth=0
"set expandtab
set cursorline
set nu
set rnu
set showcmd
set scrolloff=999
set sidescrolloff=999
set backspace=indent,eol,start
set incsearch
set hlsearch
set showmatch
set termguicolors
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set virtualedit=all

noremap <space> <nop>
let mapleader = " "
noremap <leader><leader> :nohlsearch<cr>
noremap <leader>bf :buffers!<CR>:buffer<Space>
noremap <leader>w :update<CR>
noremap <leader>q :q<CR>
" noremap ; :
" noremap <c-h> <c-w>h
" noremap <c-j> <c-w>j
" noremap <c-k> <c-w>k
" noremap <c-l> <c-w>l
noremap L <c-d>
noremap H <c-u>
noremap <c-up> :resize -2<cr>
noremap <c-down> :resize +2<cr>
noremap <c-left> :vertical resize -2<cr>
noremap <c-right> :vertical resize +2<cr>
noremap <c-l> :bnext<cr>
noremap <c-h> :bprevious<cr>
noremap Q :bd<CR>
" noremap Q :bn\|bd #<CR>
vnoremap p "_dP
noremap gp "0p
noremap gP "0P
noremap! kj <esc>

syntax on
set pumheight=10
colorscheme slate
set wildmenu wildoptions=pum
