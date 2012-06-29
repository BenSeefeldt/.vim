" Maintainer:	Lars H. Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine ctermbg=#2d2d2d
  hi CursorColumn ctermbg=#2d2d2d
  hi MatchParen ctermfg=#f6f3e8 ctermbg=#857b6f cterm=bold
  hi Pmenu 		ctermfg=#f6f3e8 ctermbg=#444444
  hi PmenuSel 	ctermfg=#000000 ctermbg=#cae682
endif

" General colors
hi Cursor 		ctermfg=NONE    ctermbg=#656565 cterm=none
hi Normal 		ctermfg=#f6f3e8 ctermbg=#242424 cterm=none
hi NonText 		ctermfg=#808080 ctermbg=#303030 cterm=none
hi LineNr 		ctermfg=#857b6f ctermbg=#000000 cterm=none
hi StatusLine 	ctermfg=#f6f3e8 ctermbg=#444444 cterm=italic
hi StatusLineNC ctermfg=#857b6f ctermbg=#444444 cterm=none
hi VertSplit 	ctermfg=#444444 ctermbg=#444444 cterm=none
hi Folded 		ctermbg=#384048 ctermfg=#a0a8b0 cterm=none
hi Title		ctermfg=#f6f3e8 ctermbg=NONE	cterm=bold
hi Visual		ctermfg=#f6f3e8 ctermbg=#444444 cterm=none
hi SpecialKey	ctermfg=#808080 ctermbg=#343434 cterm=none

" Syntax highlighting
hi Comment 		ctermfg=#99968b cterm=italic
hi Todo 		ctermfg=#8f8f8f cterm=italic
hi Constant 	ctermfg=#e5786d cterm=none
hi String 		ctermfg=#95e454 cterm=italic
hi Identifier 	ctermfg=#cae682 cterm=none
hi Function 	ctermfg=#cae682 cterm=none
hi Type 		ctermfg=#cae682 cterm=none
hi Statement 	ctermfg=#8ac6f2 cterm=none
hi Keyword		ctermfg=#8ac6f2 cterm=none
hi PreProc 		ctermfg=#e5786d cterm=none
hi Number		ctermfg=#e5786d cterm=none
hi Special		ctermfg=#e7f6da cterm=none
hi Search       ctermfg=#242424 ctermbg=#FFFF66

" Tab specific stuff
hi TabLine ctermfg=#808080 ctermbg=#303030 cterm=italic
hi TabLineFill ctermbg=#444444 cterm=none

" For c++ specific stuff
hi Structure    ctermfg=#996699 cterm=none
hi cppSTL ctermfg=#81DFBF cterm=none
hi Trilinos ctermfg=#e5786d cterm=none

" For MiniBufExplorer
hi MBEVisibleActive ctermfg=#cae682 ctermbg=#242424
hi MBEVisibleChangedActive ctermfg=#e5786d ctermbg=#242424
hi MBEVisibleChanged ctermfg=#8b63d8 ctermbg=#242424
hi MBEVisibleNormal ctermfg=#8ac6f2 ctermbg=#242424
hi MBEChanged ctermfg=#CD5907 ctermbg=#242424
hi MBENormal ctermfg=#808080 ctermbg=#242424
