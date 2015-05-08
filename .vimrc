"load everything from pathogen
filetype off
execute pathogen#infect()
filetype plugin indent on

autocmd FileType python set complete+=k~/.vim/syntax/python.vim 
syntax enable

"keep the cursor in the middle of the page
set scrolloff=80
"relative numbering
set relativenumber
"if you print from vim: single sided, 14pt margins, with line numbers
set printoptions=duplex:off,left:14pt,number:y
"start searching while typing
set incsearch

set background=dark
colorscheme solarized
let g:solarized_termcolors=16

"close vim if only NERDTree window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"shortcut to turn on NERDTree
command Nerd NERDTree
"disable the arrows that don't work
let g:NERDTreeDirArrows=0
" have nerdtree show hidden files
let NERDTreeShowHidden=1
" sort dotfiles first in directories
let NERDTreeSortHiddenFirst=1

au FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType pyrex set expandtab shiftwidth=4 softtabstop=4 autoindent 
autocmd FileType ruby set expandtab shiftwidth=2 softtabstop=2 autoindent 

let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview


"Set the leader and change exit from esc to jj 
let mapleader = ","
inoremap jj <ESC>

set isk+=.
set backspace=indent,eol,start
set nocompatible
set ignorecase
set autoindent
set copyindent
set smartcase
set viminfo='10,\"100,:20,%,n~/.viminfo
set textwidth=90
set softtabstop=4
set tabstop=4
set expandtab
set smarttab


"Highlights any line over 90chars in green
"highlight OverLength ctermbg=green ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"puts a red column at XXchars
set colorcolumn=90

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.conf set ft=javascript
autocmd BufNewFile,BufRead *.config set ft=javascript

au! BufRead,BufNewFile *.json setfiletype json 
au! BufRead,BufNewFile *.conf setfiletype json 
au! BufRead,BufNewFile *.config setfiletype json 

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.conf set shiftwidth=2
au BufRead,BufNewFile *.py,*.pyw set expandtab

"autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" For python files, automatically strip off trailing whitespace (and lines that are solely
" whitespace) when saving
autocmd BufWritePre *.py silent! :%s/\s\+$//

"nice status bar at bottom with current/total lines, column, percent of doc
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
:set laststatus=2

nmap <silent> <C-f> :CommandTFlush<CR>
nmap <C-k> D
nmap <C-y> p

"semi-colon is a colon
nnoremap ; :

"Carriage Return to toggle between files in window
"nnoremap <CR> :wa<CR><C-^>

"reformats and saves json file if you have json_reformat installed
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
"nnoremap dt d

"delete a word and insert
"nnoremap di dwi

"Saving and quiting short-cuts
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>

"shortcuts for paste 'mode'
nnoremap <leader>p :set paste<CR>
nnoremap <leader>np :set nopaste<CR>

"hl search highlights as you search
set hlsearch
nnoremap <leader>k :nohlsearch<CR>

" not sure this does anything...
"nnoremap <leader>c <leader>c<space>

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
nnoremap <leader>d <C-w>-
nnoremap <leader>< <C-w><
nnoremap <leader>> <C-w>>
nnoremap <leader>k <C-w>+
nnoremap <leader>h :split<CR>


let g:jedi#popup_on_dot = 0

command! Despace :%s/\s\+$//
