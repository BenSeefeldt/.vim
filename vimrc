" ==============================================================================
"                                Vundle Options
" ==============================================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required! 
Bundle 'gmarik/vundle'

" UI
Bundle 'w0ng/vim-hybrid'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'mhinz/vim-startify'
" Bundle 'bling/vim-airline'
Bundle 'itchyny/lightline.vim'

" Syntax
Bundle 'Raimondi/delimitMate'

" Files
Bundle 'kien/ctrlp.vim'

" Buffers
Bundle 'troydm/easybuffer.vim'

" Text Manipulation
Bundle 'godlygeek/tabular'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'tpope/vim-surround'

" Note Taking
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-shell'

" Required by Vundle.
filetype plugin indent on


" ==============================================================================
"                           Various Settings
" ==============================================================================
set exrc
let mapleader = ","

" Mouse always goes on
set mouse=a

" Turn on line numbering
set number
set relativenumber

" Turn off line wrapping
set nowrap

" Allows you to move to a different buffer without saving
set hidden

" Code Folding
set foldmethod=syntax
set nofoldenable
set fml=0

" Copies indent level from previous line
set autoindent


" Turn on syntax highlighting
syntax on

" Turn off intro message on vim
set shortmess=I

" Highlight search terms and clear
set hlsearch
set ignorecase

" Auto complete stuff. To come.

" Wildmenu for completion. TODO. This could be better?
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.exe,*.pyc,*.o,*.class

" 'Smash' Escape
imap jk <ESC>jk
imap kj <ESC>jk

" Allows you to not use shift.
nnoremap ; :
nnoremap : ;

" Always shows statusline
set ls=2

" Use the tab character, but view it as 2 spaces
set tabstop=2
" >> and << do two columns.
set shiftwidth=2
" View whitespace
" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" set list

" Show the begining of normal mode commands
set sc

" Autoloads changed fiels
set ar

" Makes autocomplete only go to longest
set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone
" This seems to mess up the CR expand function of DelimitMate... I forget what
" it's for.
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Sets the default browser for the 'gx' command.
let g:netrw_browsex_viewer = "chromium"

" Sets auto text width and color column
set tw=80
set cc=81

" ==============================================================================
"                              Leader Keys
" ==============================================================================
map <leader>/ ;nohl<CR><ESC>

nmap <leader>n ;bnext <CR>
nmap <leader>b ;bprevious <CR>

nmap <leader>h <C-w>10>
nmap <leader>l <C-w>10<
nmap <leader>j <C-w>10-
nmap <leader>k <C-w>10+

" System clipboard
map <leader>p "+p
map <leader>p "+P
map <leader>y "+y
map <leader>Y "+Y

" EasyBuffer Invoke
nmap <leader>v ;EasyBuffer<CR>

" ==============================================================================
"                               Mappings
" ==============================================================================
" Insert line at cursor.
nnoremap K i<CR><Esc>k$

" Allows me to navigate quickly between windows
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" ==============================================================================
"                              GUI Options
" ==============================================================================
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=l
set guioptions-=b
set guioptions+=LlRrb
set guioptions-=LlRrb
set go-=e "Uses non-gui tabs
set ruler


" ==============================================================================
"                                  Colors
" ==============================================================================
set background=dark " Set background
set t_Co=256 " Use 256 colors
let g:hybrid_use_Xresources=1
colorscheme hybrid " Load a colorscheme

" ==============================================================================
"                                Plugin Settings
" ==============================================================================
"
" 
" => Powerline
let g:Powerline_colorscheme = 'solarized256'
let g:Powerline_symbols = 'fancy'
" Turns off extre insert below
set nosmd

" => Airline
" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled = 1

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
" => DelimitMate
let delimitMate_expand_cr=1
let delimitMate_expand_space=1
let delimitMate_balance_matchpairs=1

" => CtrlP
" Set the working dir cor CtrlP to the current dir.
let g:ctrlp_working_path_mode='c'

" => EasyBuffer
" See Leader Key Mappings

" vim-notes
let g:notes_ruler_text='————————————————————————————————————————————————————————————————————————————————'
let g:notes_directories = ['~/notes']
let g:notes_tab_indents = 0
let g:notes_alt_indents = 0 

