set autoindent                                                      " automatically indent new lines
set autowrite                                                       " automatically write files when changing when multiple files open
set backspace=indent,eol,start                                      " backspace works as expected
set cmdheight=2                                                     " use a status bar that is two rows high
set cursorcolumn                                                    " highlight current column
set cursorline                                                      " highlight curret line
set expandtab                                                       " Use space instead of tabs
set fileformat=unix                                                 " set fileformat explicitly to unix
set history=1000                                                    " history length set to 1000
set hlsearch                                                        " Use highlighting when doing a search
set ignorecase                                                      " Do case insensitive matching
set incsearch                                                       " search matches as you type
set laststatus=4                                                    " Set the commands to save in history default number is 20
set linebreak                                                       " Set soft wrapping
set mouse=a                                                         " Enable mouse usage (all modes)
set nocompatible                                                    " Disable compatibility with vi which can cause unexpected issues
set norelativenumber                                                " Do not show relative line numbers
set number                                                          " Show line numbers
set pastetoggle=<F2>                                                " F2 actives insert paste mode
nnoremap <F2> :set invpaste paste?<CR>                              " map F2 to insert mode
set ruler                                                           " show row,col in status area
set shell=/bin/bash                                                 " Set shell from within vim commands
set shiftwidth=2                                                    " Set shift width to 2 spaces
set showcmd                                                         " Show (partial) command in status line
set showmatch                                                       " Show matching brackets
set showmode                                                        " shows current vim mode at bottom
set smartindent                                                     " Enable smart indent
set smarttab                                                        " Insert tabs on the start of a line according to shiftwidth
set tabstop=2                                                       " Set tab width to 2 columns
set textwidth=80                                                    " set text width to 80
set ttyfast                                                         " faster scrolling
set wildmenu                                                        " Display completion matches in a status line
syntax on                                                           " Enables syntax highlighting by default
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings
filetype plugin on
filetype indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Get rid of trailing whitespaces FINALLY
autocmd BufWritePre * :%s/\s\+$//e
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Markdown stuff
autocmd BufRead,BufNewFile *.md setlocal spell                      " spell check for markdown files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au FileType markdown,pandoc hi Title ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc hi Operator ctermfg=yellow ctermbg=NONE
au FileType markdown,pandoc set tw=0
au FileType markdown,pandoc noremap j gj
au FileType markdown,pandoc noremap k gk
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" force some files to be specific file type
au bufnewfile,bufRead .dockerignore set filetype=gitignore
au bufnewfile,bufRead *.{peg,pegn} set ft=config
au bufnewfile,bufRead *.bash* set ft=bash
au bufnewfile,bufRead *.crontab set filetype=crontab
au bufnewfile,bufRead *.ddl set ft=sql
au bufnewfile,bufRead *.go set spell spellcapcheck=0
au bufnewfile,bufRead *.gotmpl set ft=go
au bufnewfile,bufRead *.profile set filetype=sh
au bufnewfile,bufRead *.txt set spell
au bufnewfile,bufRead *gitconfig set filetype=gitconfig
au bufnewfile,bufRead *ssh/config set filetype=sshconfig
au bufnewfile,bufRead /tmp/psql.edit.* set syntax=sql
au bufnewfile,bufRead $SNIPPETS/bash/* set ft=bash
au bufnewfile,bufRead $SNIPPETS/c/* set ft=c
au bufnewfile,bufRead $SNIPPETS/css/* set ft=css
au bufnewfile,bufRead $SNIPPETS/go/* set ft=go
au bufnewfile,bufRead $SNIPPETS/html/* set ft=html
au bufnewfile,bufRead $SNIPPETS/js/* set ft=javascript
au bufnewfile,bufRead $SNIPPETS/md/* set ft=pandoc
au bufnewfile,bufRead $SNIPPETS/perl/* set ft=perl
au bufnewfile,bufRead $SNIPPETS/python/* set ft=python
au bufnewfile,bufRead $SNIPPETS/sh/* set ft=sh
au bufnewfile,bufRead commands.yaml set spell
au bufnewfile,bufRead keg set ft=yaml
au bufnewfile,bufRead meta-data set ft=yaml
au bufnewfile,bufRead user-data set ft=yaml
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IMPORTANT > start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set list
set listchars=tab:▸\ ,space:·,trail:·
" Set up viminfo
set viminfo='100,<50,s10,h,f1,r10'
set viminfo+=n~/.viminfo

" Default theme of vim
" colorscheme gruvbox8
" colorscheme gruvbox8_hard
" colorscheme gruvbox8_soft
" colorscheme seoul256
colorscheme zenburn

" Terraform / OpenTofu
let g:terraform_fmt_on_save=1
autocmd BufEnter *.tf* "colorscheme icansee
let g:terraform_align=1
