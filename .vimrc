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

" Built in Fuzzy finder
set path+=**
set wildmenu

" Better than default
set splitright
set splitbelow
vnoremap p "_dP
nnoremap Y v$hy

" Autoclosing
inoremap ( ()<++><Esc>F)i
inoremap [ []<++><Esc>F]i
inoremap {<CR> {<CR>}<Esc>O

" Filetypes
autocmd Filetype c inoremap " ""<++><Esc>F"i
autocmd Filetype c vnoremap // :norm I//<CR>
autocmd Filetype c set textwidth=0
autocmd Filetype vim set textwidth=0
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

" -------------------------- "
" -- Trailing White Space -- "
" -------------------------- "
" Match white space at the end of lines with <F5> and delete them with <F6>
highlight ExtraWhitespace ctermbg=yellow
nnoremap <F5> :match ExtraWhitespace /\s\+$/<CR>
nnoremap <F6> :%s/\s\+$//g<CR>

" My weird mappings
inoremap ,, <Esc>/<++><CR>"_c4l
nnoremap <Leader>vim :vs ~/.vimrc<CR>
vmap <leader>( "2di(<Esc>pa,,<Esc>
vmap <leader>[ "3di[<Esc>pa,,<Esc>
inoremap ,for <Esc>:read ~/.vim/for<CR>:set lazyredraw<CR>kddV3j=/<++><CR>"_c4l
