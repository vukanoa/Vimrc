# Vimrc

#Explanations for every feature in my Vimrc

TODO: Detailed explanation of every feature

(Some explanations are my own, some are from the help pages)

syntax on

	Syntax highlighting enables Vim to show parts of the text in another font
	or color. Those parts can be specific keywords or text matching a pattern.

	Syntax highlighting is not available when the |+syntax| feature has been
	disabled at compile time.

set bg=dark

	sets the Backgorund base color to be dark. Colorschemes work on top of
	this color.

colorscheme gruvbox

	Vim reads files from the output of command: "set runtimepath" in that
	order.
	I've downloaded "gruvbox" colorscheme and have placed it in:
		usr/local/share/vim/vim90/colors/gruvbox.vim

	*NOTE*
	When a version of Vim gets updated, you have to put this file in
	correct folder.

	For example if Current version:
		VIM - Vi Improved 9.0 (2022 Jun 28, compiled Sep 6 2022 16:16:10)

	cheanges into, say:
		VIM - Vi Improved 9.3(2023 Feb 12, compiled at Feb 15 2023 1:11:11)

	Then you have to put the file "gruvbox" into:
		usr/local/share/vim/vim93/colors/gruvbox.vim
	instead of the previous:
		usr/local/share/vim/vim90/colors/gruvbox.vim

let mapleader="\<Space>"

	Map a leader key inside a Vim session. It can be used to map custom
	shortcuts.

	To define a mapping which uses the "g:mapleader" variable, the special
	string "<Leader>" can be used. It is replace with the string value of
	"g:mapleader". If "g:mapleader" is not set or empty, a backslash is used
	instead. Example:
		map <Leader>A oanother line<Esc>
	Works like:
		map \A oanother line<Esc>
	But after (legacy script):
		let mapleader = ","
	or (Vim9 script):
		g:mapleader = ","
	It works like:
		map ,A oanother line<Esc>

	Note that the value of "g:mapleader" is used at the moment the mapping is
	defined. Changing "g:mapleader" after that has no effect for already
	defined mappings.

set nocompatible

	Vim is a successor of a popular text editor named "Vi". Vi works a bit
	different in some ways, but it is very similar. However if someone who is
	familiar only with Vim, was to set this option it would feel like "Vim is
	behaving strangely".

	As it says in the help page:
	This option has the effect of making Vim either more Vi-compatible, or
	make Vim behave in a more useful way.

	This is a special kind of option, because when it's set or reset,
	other options are also changed as a side effect.
	NOTE: Setting or resetting this option can have a lot of unexpected
	effects: Mappings are interpreted in another way, undo behaves
	differently, etc.  If you set this option in your vimrc file, you
	should probably put it at the very start.

	By default this option is on and the Vi defaults are used for the
	options.  This default was chosen for those people who want to use Vim
	just like Vi, and don't even (want to) know about the 'compatible'
	option.

set encoding=utf-8

	string (default for MS-Windows: "utf-8",
	otherwise: value from $LANG or "latin1")

	Sets the character encoding used inside Vim.  It applies to text in
	the buffers, registers, Strings in expressions, text stored in the
	viminfo file, etc.  It sets the kind of characters which Vim can work
	with.  See |encoding-names| for the possible values.

	Supported 'encoding' values are:
		...
		latin1   8-bit characters (ISO 8859-1, also used for cp1252)
		utf-8    32 bit UTF-8 encoded Unicode (ISO/IEC 10646-1)
		...

	NOTE: Changing this option will not change the encoding of the
	existing text in Vim.  It may cause non-ASCII text to become invalid.
	It should normally be kept at its default value, or set when Vim
	starts up.  See |multibyte|.  To reload the menus see |:menutrans|.

set number

	Show absolute line numbers.

set relativenumber

	Show line number relative to the current line. When combined with
	"set number" the current line shows the absolute line number, while
	others show relative to the current line.

set incsearch

	While typing a search command, show where the pattern, as it was typed
	so far, matches. The matched string is highlighted. If the pattern
	is invalid or not found, nothing is shown.  The screen will be updated
	often, this is only useful on fast terminals.

set nohlsearch

	While typing the search pattern the current match will be shown if the
	'incsearch' option is on.  Remember that you still have to finish the search
	command with <CR> to actually position the cursor at the displayed match.  Or
	use <Esc> to abandon the search.

	All matches for the last used search pattern will be highlighted if you set
	the 'hlsearch' option.  This can be suspended with the |:nohlsearch| command.

set noexpandtab

	Don't convert Tabs to Spaces. Let <Tab> be <Tab> not multiple <Space> characters.
	This is the default behaviour, but I like to make it explicit.
	In Insert mode: Use the appropriate number of spaces to insert a
	<Tab>.  Spaces are used in indents with the '>' and '<' commands and
	when 'autoindent' is on.  To insert a real tab when 'expandtab' is
	on, use CTRL-V<Tab>.  See also |:retab| and |ins-expandtab|.
	This option is reset when the 'paste' option is set and restored when
	the 'paste' option is reset.
	NOTE: This option is reset when 'compatible' is set.

set laststatus=0
	
	Never have a status line

set ignorecase
set smartcase

	If the 'ignorecase' option is on, the case of normal letters is ignored.
	'smartcase' can be set to ignore case when the pattern contains lowercase
	letters only.
								*/\c* */\C*
	When "\c" appears anywhere in the pattern, the whole pattern is handled like
	'ignorecase' is on.  The actual value of 'ignorecase' and 'smartcase' is
	ignored.  "\C" does the opposite: Force matching case for the whole pattern.
	{only Vim supports \c and \C}
	Note that 'ignorecase', "\c" and "\C" are not used for the character classes.

	Examples:
	      pattern	'ignorecase'  'smartcase'	matches ~
		foo	  off		-		foo
		foo	  on		-		foo Foo FOO
		Foo	  on		off		foo Foo FOO
		Foo	  on		on		    Foo
		\cfoo	  -		-		foo Foo FOO
		foo\C	  -		-		foo

set wrap
	
	This option changes how text is displayed.  It doesn't change the text  
        in the buffer, see 'textwidth' for that.                                
        When on, lines longer than the width of the window will wrap and        
        displaying continues on the next line.  When off lines will not wrap    
        and only part of long lines will be displayed.  When the cursor is      
        moved to a part that is not shown, the screen will scroll               
        horizontally.                                                           
        The line will be broken in the middle of a word if necessary.  See      
        'linebreak' to get the break at a word boundary.                        
        To make scrolling horizontally a bit more useful, try this: >           
                :set sidescroll=5                                               
                :set listchars+=precedes:<,extends:>                            
	See 'sidescroll', 'listchars' and |wrap-off|.    
	
set linebreak

	boolean (default off)
	local to window
	{not available when compiled without the |+linebreak| feature}
	If on, Vim will wrap long lines at a character in 'breakat' rather
	than at the last character that fits on the screen.  Unlike
	'wrapmargin' and 'textwidth', this does not insert <EOL>s in the file,
	it only affects the way the file is displayed, not its contents.
	If 'breakindent' is set, line is visually indented. Then, the value
	of 'showbreak' is used to put in front of wrapped lines. This option
	is not used when the 'wrap' option is off.
	Note that <Tab> characters after an <EOL> are mostly not displayed
	with the right amount of white space.


set textwidth=79

	number (default 0)
	local to buffer
	Maximum width of text that is being inserted.  A longer line will be
	broken after white space to get this width.  A zero value disables
	this.
	After 79th character, the line is broken.

set colorcolumn=80

	{not available when compiled without the |+syntax| feature}
	'colorcolumn' is a comma-separated list of screen columns that are
	highlighted with ColorColumn |hl-ColorColumn|.  Useful to align
	text.  Will make screen redrawing slower.
	Basically, a bar at 80th character. 79 characters are visible on
	the line.

highlight ColorColumn ctermbg=Black

	Color of the bar described above.

set noesckeys

	Removes possibility to define function keys that start with <Esc>

set splitright

	boolean	(default off)global
	When on, splitting a window will put the new window right of the
	current one. |:vsplit|

set splitbelow

	boolean	(default off) global
	When on, splitting a window will put the new window below the current
	one. |:split|

vnoremap p "_dP

	When I select some characters(i.e. I'm in VISUAL mode) and press 'p'
	the commands that will be execued are the following: "_ d P
	(What that does mean?)
	1. "_  => is a "black hole" register
	2. d is a command to delete.
	
	So it means that we're deleting what is currently selected, but
	we don't want to leave that just deleted
	characters(the ones we have selected) in register "" because
	currently there resides the thing we want to paste with 'P'.
	
	3. P => We use 'P', instead of 'p' (lowercase), to paste before.
	
	You can check the state of registers with :registers<CR>
	Essentially this will just paste over the selected text.

nnoremap Y v$hy

	v $ h y
	1. v ==> Go in VISUAL mode
	2. $ ==> Go to the end of the line(this will select everything from the character we
	   were previously on, until the very last character on the line which is \r
	3. h ==> Move one character to the left(deselect the last character, that is \r
	4. y ==> Yank. Copy the selected text in register ""
	Essentially this makes 'Y' executed in NORMAL mode copy everything on the line
	after the character we're currently on, including the character we're on.

inoremap ( ()<++><Esc>F)i
inoremap [ []<++><Esc>F]i
inoremap {<CR> {<CR>}<Esc>O
	
	First, let's unpack the command "inoremap".
	i => while in INSERT mode
	nore => don't do recursively commands if the one I use is already mapped
	map => map the key-combination left of <Space>(which is a delimiter between "when I press" and "do these commands"
	
	1. When I press open parenthesis '(' I wanto you to write "()<++><Esc>F)i
		Let's unpack it:
			()    - Open and close parentheses
			<++>  - I use this as a dummy "value" which I jump to with a shortcut(will be
				writen down there).
			<Esc> - Exit INSERT mode and enter NORMAL mode(It's a SINGLE, Escape, character
				not a sequence of characters: '<' 'E' 's' 'c' '>')
			F)    - From the character I'm currently on, search and jump to first found
				closed parenthesis ')'
			i     - Go in insert mode the character before closed parenthesis ')'. This
				enables us to write inside the parentheses.

autocmd Filetype c inoremap " ""<++><Esc>F"i

	Let's unpack:
	autocmd Filetype => Do this only for the type of files represented after the Space
	c => C is the type of file we do this for
	inoremap => In INSERT mode not recursively map 
	" => When we press " do things(below listed) that are written after the <Space> character.
	""<++><Esc>F"i
		Okay let's unpack this:
			"" - Open and close quotes
			<++>  - I use this as a dummy "value" which I jump to with a shortcut(will be
			        written down there).
			<Esc> - Exist INSERT mode and enter NORMAL mode(It's a SINGLE, Escape, character
				not a sequence of characters: '<' 'E' 's' 'c' '>')
			F"    - From the character I'm currently on, search and jump to first found
				closed quote '"'
			i     - Go in insert mode the character before closed quote '"'. This enables us to
			      write inside the quotes.
	
	Summary:
		Only in .c files and I type "
		(while being in INSERT MODE)
		The following will be written:
			""<++>
		And I will be in INSERT mode inside the quotes.

autocmd Filetype c set textwidth=0

autocmd Filetype cpp set textwidth=0		" cpp is both C++ and C *.h files

autocmd Filetype vim set textwidth=0

autocmd Filetype sh set textwidth=0

	Make sure the text doesn't wrap after 79 characters(previously set above) for Files of type: C,
	C++, vim(this is .vimrc file), Shell Scripts.

	For example, when you're writing a C/C++ code, and a function exceeds 79 characters, you don't
	want it to wrap. Just continue on the same line.

autocmd FileType make set noexpandtab

	Only for Files of type: "make"(Makefiles), do not convert tabs to spaces since Makefile
	requires <Tab> character to be able to work properly.

nnoremap <C - d> <C - d>M

nnoremap <C - d> <C - u>M

	1) nnoremap
		n    - While in NORMAL mode
		nore - Don't execute this command recursively if another thing is mapped to this
		       "result"(thing after the <Space>)
		map  - When I press the command left of the <Space> char do the thing after
		       the <Space>
		
	2) <C-d>
		This means: CTRL + d
		(It's literally CTRL d, you don't press '+', '-' or anything else)

	3) <C-d>M
		This will happen.
		<C-d> - moves the screen down by half of the page
		M - Puts the cursor in the middle-th row of the current screen
