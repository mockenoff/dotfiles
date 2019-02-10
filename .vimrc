" vim:fdm=marker

" Settings -------------------------------------------------------------

" Preamble {{{

" Make vim more useful {{{
set nocompatible
" }}}

" Syntax highlighting {{{
set t_Co=256
set background=dark
syntax on
colorscheme hybrid
" }}}

" Mapleader {{{
let mapleader=","
" }}}

" Local directories {{{
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
" }}}

" Set some junk {{{
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set gdefault " By default add g flag to search/replace. Add g to toggle
set hidden " When a buffer is brought to foreground, remember undo history and marks
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches
set incsearch " Highlight dynamically as pattern is typed
set laststatus=2 " Always show status line
set lazyredraw " Don't redraw when we don't have to
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes
set mouse=a " Enable mouse in all modes
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set number " Enable line numbers
set ofu=syntaxcomplete#Complete " Set omni-completion method
set report=0 " Show all changes
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shell=/bin/sh " Use /bin/sh for executing shell commands
set shiftwidth=4 " The # of spaces for indenting
set showtabline=2 " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set smartindent " Reacts to the syntax/style of the code
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set tabstop=4 " Tab key results in 2 spaces
set title " Show the filename in the window titlebar
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set wrapscan " Searches wrap around end of file
" }}}

" }}}

" Configuration -------------------------------------------------------------

" FastEscape {{{
" Speed up transition from modes
if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif
" }}}

" Filetypes {{{
filetype on
filetype plugin indent on

au BufReadPost *.twig colorscheme Tomorrow-Night-Eighties
au BufReadPost *.css colorscheme hybrid
au BufReadPost *.js colorscheme hybrid
au BufReadPost *.py colorscheme Tomorrow-Night-Eighties
au BufReadPost *.html colorscheme hybrid
au BufReadPost *.java colorscheme Tomorrow-Night-Eighties
au BufReadPost *.php colorscheme Tomorrow-Night-Eighties
au BufReadPost *.md colorscheme Tomorrow-Night-Eighties
au BufReadPost *.go colorscheme hybrid
" }}}

