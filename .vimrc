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
set viminfo='10,\"100,:20,%,n~/.viminfo

"Carriage Return to toggle between files in window
nnoremap <CR> :wa<CR><C-^>

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=2
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.conf set ft=javascript

"au! BufRead,BufNewFile *.json setfiletype json 
"au! BufRead,BufNewFile *.conf setfiletype json 
au BufRead,BufNewFile *.py,*pyw set shiftwidth=2
au BufRead,BufNewFile *.py,*.pyw set expandtab

set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
:set laststatus=2

"Set the leader and change exit from esc to jj 
let mapleader = ","
inoremap jj <ESC>
inoremap hh <ESC>

nmap <silent> <C-f> :CommandTFlush<CR>
nmap <C-k> D
nmap <C-y> p

nnoremap ; :

map <leader>j <Esc>:%!json_reformat <CR>
"Disable the arrows to force me to learn
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap t l
xnoremap t l
nnoremap dt d

"delete a word and insert
nnoremap di dwi

"Saving and quiting short-cuts
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>

"hl search highlights as you search
set hlsearch
nnoremap <leader>k :nohlsearch<CR>

nnoremap <leader>c <leader>c<space>
" Folding set up 
set foldmethod=indent
set nofoldenable
nnoremap <leader>l zR
nnoremap <leader>m zM


" Execute file being edited with <Shift> + e:
nnoremap <S-e> :w<CR>:!/opt/py27/bin/python %:p
nnoremap <S-e>v :w<CR>:!/opt/py27/bin/python %:p --verbose


nnoremap <leader>f :CommandTFlush<CR>
" remap the nerdcommenter toggle to just leader c
nnoremap <leader>a :Ack
nnoremap <F5> :GundoToggle<CR>

"Easier splits navigation - Remapped Caps Lock to Control
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-t> <C-w>l
nnoremap <leader>v <C-w>v<C-w>l

