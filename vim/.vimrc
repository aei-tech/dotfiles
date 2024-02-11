set cmdheight=2         " use a status bar that is two rows high
set cursorcolumn        " highlight current column
set cursorline          " highlight curret line
set expandtab           " Use space instead of tabs
set fileformat=unix     " set fileformat explicitly to unix
set history=1000        " history length set to 1000
set hlsearch            " Use highlighting when doing a search
set ignorecase          " Do case insensitive matching
set incsearch           " search matches as you type
set laststatus=4        " Set the commands to save in history default number is 20
set number              " Show linenumbers
set mouse=a             " Enable mouse usage (all modes)
set number              " Show line numbers
set nocompatible        " Disable compatibility with vi which can cause unexpected issues
set pastetoggle=<F2>    " F2 actives insert paste mode
nnoremap <F2> :set invpaste paste?<CR>
set ruler               " show row,col in status area
set shell=/bin/bash     " Set shell from within vim commands
set shiftwidth=2        " Set shift width to 2 spaces
set showcmd             " Show (partial) command in status line
set showmatch           " Show matching brackets
set showmode            " shows current vim mode at bottom
set tabstop=2           " Set tab width to 2 columns
" Indentation rules and plugins according to the detected filetype
filetype plugin indent on
syntax on               " Enables syntax highlighting by default
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
