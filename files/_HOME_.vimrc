" splits and navigation
set splitright
set splitbelow

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'pearofducks/ansible-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'jtratner/vim-flavored-markdown'
Plug 'fatih/vim-go'
Plug 'b4b4r07/vim-hcl'
Plug 'fatih/vim-hclfmt'
Plug 'wgwoods/vim-systemd-syntax'
Plug 'hashivim/vim-terraform'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

" tabbing
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si

" display
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually

"" Turn off swap files
set noswapfile
set nobackup

" Config!
let mapleader = "\<SPACE>"

" plugin specific configs
" ansible stuff
let g:ansible_unindent_after_newline = 1
let g:ansible_name_highlight = 'b'
let g:ansible_extra_keywords_highlight = 1


" terraform stuff
let g:terraform_align=1

"" Airline configs
let g:airline#extensions#tabline#enabled = 1 " shows all open buffers if only one tab
