"------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" javascript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
"Plugin 'moll/vim-node'
"Themes
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
"html
Plugin 'othree/html5.vim'
"A tree for nerds
Plugin 'scrooloose/nerdtree'
"Autocomplete things
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"------------------------------------------------------------
" These are highly recommended options.

" Autosave when switching buffers
set autowriteall

" Better command-line completion
set wildmenu
set wildmode=list:full

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>

"------------------------------------------------------------
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Where am I in the file
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" raise dialogue for unsaved changes
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell
set noerrorbells

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options

" Use the indentation scheme of the prev file type
set autoindent

" 4 spaces for indent
set shiftwidth=4
set softtabstop=4
set expandtab

" set shiftwidth=4
set tabstop=4

" Allow folding code on indent
"set foldmethod=indent

"Don't ever use them anyway, just makes a mess
set noswapfile

"------------------------------------------------------------
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Add a line between my brackets
imap <C-c> <CR><Esc>O

"------------------------------------------------------------
"Store lots of history

set history=1000
set undolevels=1000

if v:version>=730
  set undofile
  set undodir=~/.vim/.undo, ~/tmp,/tmp
endif

"-------------------------------------------------------------
"Plugin commands

"Themes
syntax enable
colorscheme dracula

"Ctrl P
" https://medium.com/a-tiny-piece-of-vim/making-ctrlp-vim-load-100x-faster-7a722fae7df6
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"js syntax
"Fold js
"au FileType javascript call JavaScriptFold()
