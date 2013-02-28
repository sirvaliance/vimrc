call pathogen#infect()

let g:Powerline_symbols = 'fancy'

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set columns=80
"set wrapmargin=8
set ruler                           " show line and column number
syntax on                       " syntax highlighting
set showcmd                     " show (partial) command in status line
set nocompatible
set laststatus=2

set guifont=Inconsolata-dz\ for\ Powerline:h14
set background=dark
colorscheme solarized

filetype indent on
filetype on
filetype plugin on

set number
set nu

set noswapfile


filetype off
filetype indent on
filetype plugin on

" For makefiles to allow them to use tabs
:autocmd FileType make set noexpandtab

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

let vimclojure#NailGunClient = "~/Code/Clojure/bin/ng"
let vimclojure#WantNailgun = 1

let vimclojure#SplitPos = "right"

:vertical

au BufNewFile,BufRead *.cljs set filetype=clojure
