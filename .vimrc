syntax on

set bg=dark
" :set runtimepath
" usr/local/share/vim/vim90/colors/grubvox.vim
colorscheme gruvbox

let mapleader="\<Space>"

set nocompatible
set encoding=utf-8
set number
set relativenumber
set guicursor=
set incsearch
set nohlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent "Now both S and cc work with indentation
set smartindent
set noexpandtab
set smarttab
set backspace=indent,eol,start
set ruler
set laststatus=0 "Never have a status line
set ignorecase
set smartcase
set wrap
set linebreak
set textwidth=79
set colorcolumn=80
highlight ColorColumn ctermbg=Black

" Undo
if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/.undo
endif

" Swap files
set directory^=$HOME/.vim/tmp//

" Built in Fuzzy finder
set path+=**
set wildmenu

" Removes possibility to define function keys that start with <Esc>
set noesckeys

" Better than default
set splitright
set splitbelow
set undofile
vnoremap p "_dP
nnoremap Y v$hy
" Make cursor a Bar instead of a Block in INSERT mode
" let &t_SI = "\e[6 q"
" let &t_EI = "\e[2 q"

" Autoclosing
inoremap ( ()<++><Esc>F)i
inoremap [ []<++><Esc>F]i
inoremap {<CR> {<CR>}<Esc>O

" Filetypes
autocmd Filetype c inoremap " ""<++><Esc>F"i
autocmd Filetype c vnoremap // :norm I// <CR>
autocmd Filetype cpp vnoremap // :norm I// <CR>
autocmd Filetype c set textwidth=0
autocmd Filetype cpp set textwidth=0		" cpp is both C++ and C *.h files
autocmd Filetype vim set textwidth=0
autocmd Filetype sh set textwidth=0
autocmd FileType make set noexpandtab

" Use selection CLIPBOARD, not PRIMARY
vnoremap <C-c> "+y
nnoremap <C-p> "+P

" Center cursor when moving
nnoremap <C-d> <C-d>M
nnoremap <C-u> <C-u>M

" Windows jumping
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Windows resizing while split
noremap <leader>h 10<C-w>>
noremap <leader>l 10<C-w><

" Disable Arrows keys
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
	exec 'noremap' key '<Nop>'
	exec 'inoremap' key '<Nop>'
	exec 'vnoremap' key '<Nop>'
endfor

" '!' means both Insert and Command-line mode. BS is a Backspace.
" Essentially - Delete a whole word with <C-BS>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db

" Trailing White Space
highlight ExtraWhitespace ctermbg=yellow
nnoremap <F5> :match ExtraWhitespace /\s\+$/<CR>
nnoremap <F6> :%s/\s\+$//g<CR>

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" My weird mappings
inoremap ,, <Esc>/<++><CR>"_c4l
nnoremap <Leader>vim :vs ~/.vimrc<CR>
inoremap ,for <Esc>:read ~/.vim/snippets/for<CR>:set lazyredraw<CR>kddV3j=/<++><CR>"_c4l
nnoremap <leader>in =a{
nnoremap <leader>sp O<Esc>jo<Esc>k
nnoremap <leader>cen :vs bla<CR><C-w>r40<C-w><<C-w>l
nnoremap ,ma <Esc>:read ~/.vim/snippets/makefile_skeleton<CR>kdd/<++><CR>"_c4l
nnoremap ,mp <Esc>:read ~/.vim/snippets/makefile_project<CR>kdd
nnoremap ,es <Esc>:read ~/.vim/snippets/easy<CR>/<++><CR>"_c4l
nnoremap ,md <Esc>:read ~/.vim/snippets/medium<CR>/<++><CR>"_c4l
nnoremap ,hd <Esc>:read ~/.vim/snippets/hard<CR>/<++><CR>"_c4l
nnoremap ,id <Esc>:read ~/.vim/snippets/idea<CR>/<++><CR>"_c4l
nnoremap ,com <Esc>:read ~/.vim/snippets/complexity<CR>/<++><CR>"_c4l
nnoremap ,cpp <Esc>:read ~/.vim/snippets/basic_cpp<CR>kdd/<++><CR>"_c4l
nnoremap ,na <Esc>:read ~/.vim/snippets/problem_name<CR>kdd/<++><CR>"_c4l
nnoremap <Leader>p <Esc>:bprev<CR>
nnoremap <Leader>n <Esc>:bnext<CR>
