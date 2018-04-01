" initialize pathogen
execute pathogen#infect()

" Syntax stuff
syntax on
syntax enable

filetype plugin indent on

" Config!
let mapleader = "\<SPACE>"

set showcmd

" panes
set splitright
set splitbelow

set shell=bash

"" Turn off swap files
set noswapfile
set nobackup

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines

" Scrolling
set scrolloff=10
set sidescrolloff=15
set sidescroll=1


"" Airline configs
let g:airline#extensions#tabline#enabled = 1 " shows all open buffers if only one tab


"" ansible-vim configuration
let g:ansible_unindent_after_newline = 1
