filetype plugin indent on
autocmd FileType python set complete+=k~/.vim/syntax/python3.0.vim isk+=.,(
call pathogen#runtime_append_all_bundles() 
let mapleader = "," 
syntax enable
set backspace=indent,eol,start
set nocompatible
set ignorecase
set autoindent
set smartcase

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=2
au BufRead,BufNewFile *.py,*pyw set shiftwidth=2
au BufRead,BufNewFile *.py,*.pyw set expandtab

:set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]
:set laststatus=2

"Set the leader and change exit from esc to jj 
let mapleader = ","
inoremap jj <ESC>

nmap <silent> <C-f> :CommandTFlush<CR>
nmap <C-k> D
nmap <C-y> p

nnoremap ; :

"Disable the arrows to force me to learn
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"Saving and quiting short-cuts
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>

" Folding set up 
set foldmethod=indent
set nofoldenable
nnoremap <leader>l zR
nnoremap <leader>m zM


" Execute file being edited with <Shift> + e:
nnoremap <S-e> :w<CR>:!/opt/py27/bin/python %:p
nnoremap <S-e>v :w<CR>:!/opt/py27/bin/python %:p --verbose


nnoremap <leader>f :CommandTFlush<CR>
nnoremap <F5> :GundoToggle<CR>

"Easier splits navigation - Remapped Caps Lock to Control
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l
nnoremap <leader>v <C-w>v<C-w>l

