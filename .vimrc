filetype plugin indent on
autocmd FileType python set complete+=k~/.vim/syntax/python3.0.vim isk+=.,(
call pathogen#runtime_append_all_bundles() 
let mapleader = "," 
syntax enable
set backspace=indent,eol,start
set nocompatible
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=2
au BufRead,BufNewFile *.py,*pyw set shiftwidth=2
au BufRead,BufNewFile *.py,*.pyw set expandtab
set autoindent
:set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]
:set laststatus=2
inoremap jj <ESC>
nmap <silent> <C-f> :CommandTFlush<CR>
nmap <C-k> D
nmap <C-y> p
set ignorecase
set smartcase
nnoremap ; :
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
let mapleader = ","
nnoremap <leader>w :w<enter>
nnoremap <leader>wq :wq<enter>
" Folding based on indentation: set foldmethod=indent
