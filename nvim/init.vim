
set t_Co=256
set t_ut=
call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'bfrg/vim-cpp-modern'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'phaazon/hop.nvim'
Plug 'preservim/nerdtree'
Plug 'yuezk/vim-js'
call plug#end()

lua require('config')

colorscheme peachpuff
set number
set scrolloff=999
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set showcmd
set timeoutlen=300
set hidden
set nowrap
set splitbelow
set expandtab
let g:NERDTreeChDirMode=2
let g:mapleader=" "
let g:maplocalleader=","
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
filetype plugin indent on

inoremap kj <esc>
noremap <leader>s :HopChar1<cr>
noremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>q :bd<cr>
nnoremap <leader>Q :bd!<cr>
nnoremap <leader>w :w<cr>
nnoremap <silent> <leader> :WhichKey ' '<cr>
nnoremap <silent> <localleader> :WhichKey ','<cr>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ' '<cr>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>r :RnvimrToggle<cr>
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<tab>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <c-space> coc#refresh()
" Use ctrl-[hjkl] to select the active split!
nmap <c-k> :wincmd k<CR>
nmap <c-j> :wincmd j<CR>
nmap <c-h> :wincmd h<CR>
nmap <c-l> :wincmd l<CR>
" Move between buffers using Tab in normal mode
nnoremap  <silent>   <tab>  :bnext<CR>
nnoremap  <silent> <s-tab>  :bprevious<CR>
noremap <silent> <C-Right> :vertical resize -1<CR>
noremap <silent> <C-Left> :vertical resize +1<CR>
noremap <silent> <C-up> :resize -1<CR>
noremap <silent> <C-down> :resize +1<CR>

" COC (keeping everything under <leader>p)


nmap <leader>pd <Plug>(coc-definition)
nmap <leader>py <Plug>(coc-type-definition)
nmap <leader>pi <Plug>(coc-implementation)
nmap <leader>pr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>pn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>pf  <Plug>(coc-format-selected)
nmap <leader>pf  <Plug>(coc-format-selected)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

let g:lsp_cxx_hl_use_text_props=1
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1
