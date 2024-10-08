syntax on

"set listchars
"hi SpecialKey guifg=red
"syntax match SpecialKey / 	/

set bg=dark
" :set runtimepath
" usr/local/share/vim/vim90/colors/grubvox.vim
colorscheme gruvbox
" set termguicolors
" hi Normal guibg=#300A24
" highlight Normal ctermfg=grey ctermbg=8

hi SpecialKey ctermfg=black ctermbg=yellow

let mapleader="\<Space>"

set nocompatible
set encoding=utf-8
set number
set relativenumber
set guicursor=
set incsearch
set nohlsearch
"set noexpandtab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent "Now both S and cc work with indentation
set smartindent
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
autocmd Filetype c set textwidth=0
autocmd Filetype cpp set textwidth=0		" cpp is both C++ and C *.h files
autocmd Filetype vim set textwidth=0
autocmd Filetype sh set textwidth=0
autocmd FileType make set noexpandtab

" Use selection CLIPBOARD, not PRIMARY
vnoremap <C-c> "+y
vnoremap <Leader>y "+y
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

" Remove trailing whitespace on save
" autocmd BufWritePre * %s/\s\+$//e

" Spell Check
	map <F6> :setlocal spell! spelllang=en_us<CR>
	nnoremap <F7> :setlocal nospell<CR>
	highlight SpellBad ctermbg=red ctermfg=black
	highlight SpellLocal ctermbg=magenta ctermfg=black
	highlight SpellRare ctermbg=yellow ctermfg=black
	" highlight SpellBad ctermbg=red
	" highlight SpellLocal ctermbg=magenta
	" highlight SpellRare ctermbg=yellow

" My weird mappings
inoremap ,, <Esc>/<++><CR>"_c4l
nnoremap <Leader>vim :vs ~/.vimrc<CR>
nnoremap <leader>in =a{
nnoremap <leader>sp O<Esc>jo<Esc>k
nnoremap <leader>cen :vs bla<CR><C-w>r40<C-w><<C-w>l
nnoremap <leader>li :set list!<CR>
nnoremap <leader>w :%s/\s\+$//e<CR>
vnoremap <leader>so :!sort -g<CR>
inoremap ,for <Esc>:read ~/.vim/snippets/for<CR>:set lazyredraw<CR>kddV3j=/<++><CR>"_c4l
nnoremap ,ma <Esc>:read ~/.vim/snippets/makefile_skeleton<CR>kdd/<++><CR>"_c4l
nnoremap ,mp <Esc>:read ~/.vim/snippets/makefile_project<CR>kdd
nnoremap ,sol <Esc>:read ~/.vim/snippets/solution_cpp<CR>kdd/<++><CR>"_c4l
nnoremap ,lee <Esc>:read ~/.vim/snippets/leet_cpp<CR>kdd/<++><CR>"_d4l
nnoremap ,es <Esc>:read ~/.vim/snippets/easy<CR>/<++><CR>"_c4l
nnoremap ,md <Esc>:read ~/.vim/snippets/medium<CR>/<++><CR>"_c4l
nnoremap ,hd <Esc>:read ~/.vim/snippets/hard<CR>/<++><CR>"_c4l
nnoremap ,id <Esc>:read ~/.vim/snippets/idea<CR>/<++><CR>"_c4l
nnoremap ,com <Esc>:read ~/.vim/snippets/complexity<CR>/<++><CR>"_c4l
nnoremap ,bt <Esc>:read ~/.vim/snippets/beats<CR>/<++><CR>"_c4l
nnoremap ,pa <Esc>:read ~/.vim/snippets/print_array<CR><CR>/<++><CR>"_c4l
nnoremap ,pd <Esc>:read ~/.vim/snippets/print_array_of_arrays<CR><CR>/<++><CR>"_c4l
nnoremap ,pm <Esc>:read ~/.vim/snippets/print_matrix<CR><CR>/<++><CR>"_c4l
nnoremap ,cpp <Esc>:read ~/.vim/snippets/basic_cpp<CR>kdd/<++><CR>"_c4l
nnoremap ,sm <Esc>:read ~/.vim/snippets/small<CR>kdd/<++><CR>"_d4l
nnoremap ,br <Esc>:read ~/.vim/snippets/brief_template<CR>kdd/<++><CR>"_c4l
nnoremap ,sim <Esc>:read ~/.vim/snippets/simulation<CR>kdd/<++><CR>"_c4l
nnoremap ,in <Esc>:read ~/.vim/snippets/intuition<CR>kdd/<++><CR>"_c4l
nnoremap ,lin <Esc>:read ~/.vim/snippets/line<CR>
nnoremap ,pre <Esc>:read ~/.vim/snippets/prerequisites<CR>kdd/<++><CR>"_c4l
nnoremap ,dir <Esc>:read ~/.vim/snippets/directions<CR>kdd/<++><CR>"_c4l
nnoremap ,fw <Esc>:read ~/.vim/snippets/follow_up<CR>/<++><CR>"_c4l
nnoremap ,ac <Esc>:read ~/.vim/snippets/accelerate<CR>/<++><CR>"_c4l
nnoremap ,dn <Esc>:read ~/.vim/snippets/done<CR>
nnoremap <Leader>p <Esc>:bprev<CR>
nnoremap <Leader>n <Esc>:bnext<CR>
nnoremap <Tab> gt
vnoremap ,zl :s/\[/\{/g<CR>
vnoremap ,zd :s/\]/\}/g<CR>
nmap ,zn <Leader>cenzt
nnoremap <Leader>t :%s/\t/    /g<CR>
nnoremap <Leader>m :%s/\r//g<CR>
nnoremap ,tr :term<CR> <C-w>k40<C-w>_<C-w>j<CR><C-l>

ab mae "Management Engine"


" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
	autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
