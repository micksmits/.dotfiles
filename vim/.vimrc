" Set basic settings
set nowrap
set nu
set relativenumber
set nohlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set expandtab
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set backspace=indent,eol,start
set termguicolors
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set listchars=space:·
set list
set colorcolumn=80
set formatoptions-=cro
set re=0

call plug#begin('~/.vim/plugged')
" File navigation
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Testing
Plug 'vim-test/vim-test'

" Themes
Plug 'morhetz/gruvbox'

" Codelinting and autocomplete
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Set colors
colorscheme gruvbox
set background=dark

" Maps & remaps
let mapleader=" "
nnoremap <C-p> :GFiles --cached --others<CR>
nnoremap <C-g> :Ag<CR>
nmap <silent> gd <Plug>(coc-definition)

" Plugin settings
let g:ale_lint_on_text_changed='always'
let g:fzf_layout = {'window': {'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'none'}}

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup AUTO_COMMANDS
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

