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

" Better than default
set splitright
set splitbelow
vnoremap p "_dP
nnoremap Y v$hy

" Autoclosing
inoremap ( ()<++><Esc>F)i
inoremap [ []<++><Esc>F]i
inoremap {<CR> {<CR>}<Esc>O

" My weird mappings
inoremap ,, <Esc>/<++><CR>"_c4l
nnoremap <Leader>vim :vs ~/.vimrc<CR>
vmap <leader>( "2di(<Esc>pa,,<Esc>
vmap <leader>[ "3di[<Esc>pa,,<Esc>
