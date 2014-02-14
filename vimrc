" ==============================================================================
"                                Vundle Options
" ==============================================================================
" Vundle settings.
set term=$TERM
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Required! 
Bundle 'gmarik/vundle'

" UI
Bundle 'mhinz/vim-startify'
Bundle 'itchyny/lightline.vim'

" Syntax
Bundle 'Raimondi/delimitMate'

" Files
" Bundle 'kien/ctrlp.vim'

" Buffers
" " Bundle 'troydm/easybuffer.vim'

" Text Manipulation
Bundle 'godlygeek/tabular'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'tpope/vim-surround'
Bundle 'atweiden/vim-dragvisuals'

" Note Taking
" " Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-shell'

" Python autocomplete
" Bundle 'davidhalter/jedi-vim'
" Bundle 'Valloric/YouCompleteMe'

" Required by Vundle.
filetype plugin indent on


" ==============================================================================
"                           Various Settings
" ==============================================================================
set exrc
let mapleader = ","

" Makes the backpace key work how you would expect.
set backspace=2

" Mouse always goes on
set mouse=a

" Turn on line numbering
set number
set relativenumber

" List chars for tab and trailing whitespace.
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

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

" Always shows statusline
set ls=2

" Use the tab character, but view it as 2 spaces
set tabstop=2
" >> and << do two columns.
set shiftwidth=2
set softtabstop=2
" Expand tab into spaces.
set expandtab

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
" let g:netrw_browsex_viewer = "open"
nmap gx ;Open<CR>

" Sets color column
" set tw=80
set cc=81

" Correctly sets filetype for the markdown filetype
au BufRead,BufNewFile *.md set filetype=markdown

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
map <leader>p "*p
map <leader>P "*P
map <leader>y "*y
map <leader>Y "*Y

" ==============================================================================
"                               Mappings
" ==============================================================================
" Split line at cursor.
nnoremap K i<CR><Esc>k$

" Allows me to navigate quickly between windows
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" Swap visual and block-visual.
nnoremap    v   <C-V>
nnoremap <C-V>     v

vnoremap    v   <C-V>
vnoremap <C-V>     v

" 'Smash' Escape
" imap jk <ESC>jk
" imap kj <ESC>jk

" Allows you to not use shift.
nnoremap ; :
nnoremap : ;

" Awesome Visual mode drag features.
vmap <expr> <LEFT> DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <DOWN> DVB_Drag('down')
vmap <expr> <UP> DVB_Drag('up')
vmap <expr> D DVB_Duplicate()


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
set guicursor+=a:blinkon0
set go-=e "Uses non-gui tabs
set ruler
" GUI font setting for Mac
set guifont=Menlo\ Regular:h13


" ==============================================================================
"                                  Colors
" ==============================================================================
set background=dark " Set background
set t_Co=256 " Use 256 colors
colorscheme Tomorrow-Night " Load a colorscheme
" highlight Pmenu ctermfg=4 ctermbg=0
" highlight PmenuSel ctermfg=0 ctermbg=4

" ==============================================================================
"                                Plugin Settings
" ==============================================================================
"
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"⁍":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
" " " => DelimitMate
let delimitMate_expand_cr=1
let delimitMate_expand_space=1
let delimitMate_balance_matchpairs=1
" " 
" " " vim-notes
" " let g:notes_ruler_text='————————————————————————————————————————————————————————————————————————————————'
" " let g:notes_directories = ['~/notes']
" " let g:notes_tab_indents = 0
" " let g:notes_alt_indents = 0 

" let g:clang_user_options"|| exit 0'

" ==============================================================================
"                             OS Specific Mappings
" ==============================================================================

" Vim copy for iTerm2
if &term =~ "xterm.*"
  let &t_ti = &t_ti . "\e[?2004h"
  let &t_te = "\e[?2004l" . &t_te
  function XTermPasteBegin(ret)
    set pastetoggle=<Esc>[201~
    set paste
    return a:ret
  endfunction
  map <expr> <Esc>[200~ XTermPasteBegin("i")
  imap <expr> <Esc>[200~ XTermPasteBegin("")
  cmap <Esc>[200~ <nop>
  cmap <Esc>[201~ <nop>
endif
