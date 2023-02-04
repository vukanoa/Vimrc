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
