" General Settings
set nocompatible
set directory=.,$TEMP
set number
set nowrap
set expandtab
set shiftwidth=2
set softtabstop=2
set foldmethod=syntax
set nofoldenable
set foldlevel=1
set hidden
set autoindent
set nocp
set t_Co=256
set shortmess=I
set fml=0
filetype plugin on

" Highlight search optioins
set hlsearch
syntax on

" Color Options
" colors wombat256mod
colors wombat 
" colors desert

" Fixes Auto Complete
set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Coolest thing. Fixes odd completion behavior.
set wildmenu
set wildmode=longest:full
set wildignore+=*.exe,*.pyc,*.o,*.class
"
" Custom Leader
let mapleader = ","

" 'Smash' Escape
imap jk <ESC>
imap kj <ESC>


nnoremap ; :
" noremap ;; ;
nnoremap : ;
" vnoremap ; :
" vnoremap : ;

" Movement between buffers


" I forget what this does.
set ls=2

" Keeping it in here. This is helpful for windows
" One looks better, one handles more characters
" nnoremap <leader>g :set guifont=Consolas:h12 <CR>
set guifont=Droid\ Sans\ Mono\ 10

" Interesting setting. Set it high to keep 
" the cursor in the middle of the screen.
" set scrolloff=10


" Some leader mappings to speed things up.
map <leader>m ;update<CR>;make!<CR> 
" If you've go make handy
map <leader>/ ;nohl<CR> 
" This is upper nice 
" Resizing splits
nmap <leader>n ;bnext <CR>
nmap <leader>b ;bprevious <CR>
nmap <leader>h <C-w>10>
nmap <leader>l <C-w>10<
nmap <leader>j <C-w>10-
nmap <leader>k <C-w>10+
" Quick Save
imap <C-s> <ESC>:w<CR>
" Helpful for C++ and Java
imap <C-l> <END>
map <C-s> :w<CR>
" To use the system clipboard
map <leader>p "+p
map <leader>p "+P
map <leader>y "+y
map <leader>Y "+Y


" Necessary for a nice gvim look.
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=l
set guioptions-=b
set guioptions+=LlRrb
set guioptions-=LlRrb
set go-=e "Uses non-gui tabs
set ruler

" Allows me to navigate quickly between windows
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

set backspace=2
set tw=0

" Incremental search
set incsearch
set ignorecase
