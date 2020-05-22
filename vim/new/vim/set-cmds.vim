
set autoindent
set autochdir
set autoread                    " auto refresh if file changed on disk

set backspace=2		            " Allows insert-mode backspace to work as one expects
set belloff=all

set cindent
set cinkeys=0{,0},:,!^F,o,O,e	" See "cinkeys"; this stops "#" from indenting
set cmdheight=2                 " Give more space for displaying messages.

set encoding=utf-8
set expandtab

set fileformat=unix	            " No crazy CR/LF

set gdefault                    " gdefault applies substitutions globally on lines: instead of :%s/foo/bar/g, just type :%s/foo/bar/

set hidden
set hlsearch                    " highlight search terms:  search smartly.. and easily: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set ignorecase                  " search intelligently : http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set incsearch                   " show search matches as you type

set listchars=tab:\ \ ,trail:·  " If you do ":set list", shows trailing spaces

set nobackup
set nobackup		            " Don't use a backup file (also see writebackup)
set nocompatible
set nojoinspaces	            " One space after a "." rather than 2
set noswapfile
set nu


set scrolloff=1		            " Minimum lines between cursor and window edge
set shiftwidth=4	            " Indent by 4 columns (for C functions, etc).
set showcmd		                " Show partially typed commands
set showmatch		            " Show parentheses matching
set signcolumn=yes              " used by language server client
set smartcase                   " search intelligently : http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set smartindent		            " Indent settings (really only the cindent matters)
set softtabstop=4 

set ruler		                " Show the line position at the bottom of the window
set relativenumber

set tabstop=4 
set textwidth=180	            " Maximum line width

set updatetime=50               " longer updatetime (default: 4000ms) leads to noticeable delays and poor user experience.
set undodir=~/.vim/undodir      " used by plugin: undotree
set undofile                    " used by plugin: undotree


set wildignore=*.swp,*.bak,*.*.pyc,*.class,*/.git/**/* 
set wildignorecase
set wildmenu                    " shows a list of matching files when tab completing in command mode, like with :tabe
set wildmode=list:full          " https://www.reddit.com/r/vim/comments/1p2a62/a_painless_tutorial_on_vim_buffers/ccxzq7e/
set whichwrap=<,>,[,],h,l       " Allows for left/right keys to wrap across lines
set writebackup		            " Write temporary backup files in case we crash

"set viminfo='0,\"100,	        " Stay at the start of a file when opening it
