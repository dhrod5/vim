autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
syntax enable

set background=dark

set runtimepath+=~/.vim/bundle/ultisnips
"set runtimepath+=~/.vim/snips

filetype plugin indent on
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
let g:UltiSnipsUsePythonVersion = 2
call pathogen#runtime_append_all_bundles() 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"au FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType java set omnifunc=javacomplete#Complete
""autocmd FileType java set completefunc=javacomplete#CompleteParamsInfo
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"au FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete

"set completeopt=menuone,longest,preview
"let g:SuperTabDefaultCompletionType = "context"
""autocmd FileType java let g:SuperTabDefaultCompletionType = "<C-N>"
"let g:SuperTabContextDefaultCompletionType = "<c-n>"
set tags=~/tmp/tags


"Set the leader and change exit from esc to jj 
let mapleader = ","
inoremap jj <ESC>

set backspace=indent,eol,start
set nocompatible
set ignorecase
set autoindent
set smartcase
set viminfo='10,\"100,:20,%,n~/.viminfo
set textwidth=80
set softtabstop=4

highlight OverLength ctermbg=green ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

autocmd BufNewFile,BufRead *.py set ft=python
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.conf set ft=javascript
autocmd BufNewFile,BufRead *.config set ft=javascript

au! BufRead,BufNewFile *.json setfiletype json 
au! BufRead,BufNewFile *.conf setfiletype json 
au! BufRead,BufNewFile *.config setfiletype json 
au! BufRead,BufNewFile *.scala setfiletype scala
au! BufRead,BufNewFile *.py setfiletype python
au! BufRead,BufNewFile *.c setfiletype c

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.conf set shiftwidth=2
"au BufRead,BufNewFile *.py,*.pyw set expandtab

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" Nearest source control ancestor
"let g:ctrlp_working_path_mode=2  

set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set laststatus=2

nmap <silent> <C-f> :CommandTFlush<CR>
nmap <C-k> D
nmap <C-y> p

nnoremap ; :

"Carriage Return to toggle between files in window
nnoremap <CR> :wa<CR><C-^>

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
nnoremap dt d

"delete a word and insert
nnoremap di dwi

"Saving and quiting short-cuts
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q!<CR>

nnoremap <leader>p :set paste<CR>
nnoremap <leader>np :set nopaste<CR>

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
nnoremap <leader>d <C-w>-
nnoremap <leader>< <C-w><
nnoremap <leader>> <C-w>>
nnoremap <leader>k <C-w>+
nnoremap <leader>h :split<CR>
