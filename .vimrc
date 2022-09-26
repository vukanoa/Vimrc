syntax on

set bg=dark
colorscheme gruvbox

let mapleader="\<Space>"

set number
set relativenumber
set incsearch
set nohlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set noexpandtab
set smarttab
set backspace=indent,eol,start
set ruler
set laststatus=0 "Never have a status line
set wrap
set linebreak
set textwidth=79
set colorcolumn=80
highlight ColorColumn ctermbg=Black

" Autoclosing
inoremap ( ()<++><Esc>F)i
inoremap [ []<++><Esc>F]i
inoremap {<CR> {<CR>}<Esc>O
