" This scheme was created by CSApproxSnapshot
" on Wed, 31 Oct 2012

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE ctermbg=235 ctermfg=231 gui=NONE guibg=#242424 guifg=#f6f3e8 cterm=NONE
    CSAHi Statement term=bold ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE  
    CSAHi PreProc term=underline ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Type term=underline ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi Underlined term=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff cterm=underline 
    CSAHi Ignore term=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=#242424 cterm=NONE 
    CSAHi Error term=reverse ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi Todo term=NONE ctermbg=226 ctermfg=245 gui=italic guibg=#ffff00 guifg=#8f8f8f cterm=italic 
    CSAHi String term=NONE ctermbg=bg ctermfg=150 gui=italic guibg=bg guifg=#95e454 cterm=italic 
    CSAHi Number term=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi SpecialKey term=bold ctermbg=59 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080 cterm=NONE 
    CSAHi NonText term=bold ctermbg=236 ctermfg=244 gui=NONE guibg=#303030 guifg=#808080 cterm=NONE 
    CSAHi Directory term=bold ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff cterm=NONE 
    CSAHi ErrorMsg term=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi IncSearch term=reverse ctermbg=231 ctermfg=235 gui=reverse guibg=bg guifg=fg cterm=reverse 
    CSAHi Search term=reverse ctermbg=228 ctermfg=235 gui=NONE guibg=#ffff66 guifg=#242424 cterm=NONE 
    CSAHi MoreMsg term=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57 cterm=bold 
    CSAHi ModeMsg term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi LineNr term=underline ctermbg=16 ctermfg=138 gui=NONE guibg=#000000 guifg=#857b6f cterm=NONE 
    CSAHi UtlTag term=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg cterm=NONE 
    CSAHi Keyword term=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE 
    CSAHi cppSTL term=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#81dfbf cterm=NONE 
    CSAHi Trilinos term=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleActive term=NONE ctermbg=235 ctermfg=193 gui=NONE guibg=#242424 guifg=#cae682 cterm=NONE 
    CSAHi MBEVisibleChangedActive term=NONE ctermbg=235 ctermfg=174 gui=NONE guibg=#242424 guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleChanged term=NONE ctermbg=235 ctermfg=140 gui=NONE guibg=#242424 guifg=#8b63d8 cterm=NONE 
    CSAHi MBEVisibleNormal term=NONE ctermbg=235 ctermfg=153 gui=NONE guibg=#242424 guifg=#8ac6f2 cterm=NONE 
    CSAHi SpellRare term=reverse ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff cterm=undercurl 
    CSAHi SpellLocal term=underline ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff cterm=undercurl 
    CSAHi Pmenu term=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi PmenuSel term=NONE ctermbg=193 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000 cterm=NONE 
    CSAHi PmenuSbar term=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg cterm=NONE 
    CSAHi PmenuThumb term=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg cterm=NONE 
    CSAHi TabLine term=underline ctermbg=236 ctermfg=244 gui=italic guibg=#303030 guifg=#808080 cterm=italic 
    CSAHi TabLineSel term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi TabLineFill term=reverse ctermbg=238 ctermfg=fg gui=NONE guibg=#444444 guifg=fg cterm=NONE 
    CSAHi CursorColumn term=reverse ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi Function term=NONE ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi CursorLineNr term=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00 cterm=bold 
    CSAHi Question term=NONE ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ff00 cterm=bold 
    CSAHi StatusLine term=reverse,bold ctermbg=238 ctermfg=231 gui=italic guibg=#444444 guifg=#f6f3e8 cterm=italic 
    CSAHi StatusLineNC term=reverse ctermbg=238 ctermfg=138 gui=NONE guibg=#444444 guifg=#857b6f cterm=NONE 
    CSAHi VertSplit term=reverse ctermbg=238 ctermfg=238 gui=NONE guibg=#444444 guifg=#444444 cterm=NONE 
    CSAHi Title term=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8 cterm=bold 
    CSAHi Visual term=reverse ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi VisualNOS term=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg cterm=bold,underline 
    CSAHi WarningMsg term=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000 cterm=NONE 
    CSAHi WildMenu term=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000 cterm=NONE 
    CSAHi CursorLine term=underline ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi ColorColumn term=reverse ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg cterm=NONE 
    CSAHi Cursor term=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#656565 guifg=fg cterm=NONE 
    CSAHi lCursor term=NONE ctermbg=231 ctermfg=235 gui=NONE guibg=#f6f3e8 guifg=#242424 cterm=NONE 
    CSAHi MatchParen term=reverse ctermbg=138 ctermfg=231 gui=bold guibg=#857b6f guifg=#f6f3e8 cterm=bold 
    CSAHi Comment term=italic ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#99968b cterm=italic 
    CSAHi Constant term=underline ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Special term=bold ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#e7f6da cterm=NONE 
    CSAHi Identifier term=underline ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi MBEChanged term=NONE ctermbg=235 ctermfg=172 gui=NONE guibg=#242424 guifg=#cd5907 cterm=NONE 
    CSAHi MBENormal term=NONE ctermbg=235 ctermfg=244 gui=NONE guibg=#242424 guifg=#808080 cterm=NONE 
    CSAHi Structure term=NONE ctermbg=bg ctermfg=139 gui=NONE guibg=bg guifg=#996699 cterm=NONE 
    CSAHi Folded term=NONE ctermbg=59 ctermfg=145 gui=NONE guibg=#384048 guifg=#a0a8b0 cterm=NONE 
    CSAHi FoldColumn term=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi DiffAdd term=bold ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg cterm=NONE 
    CSAHi DiffChange term=bold ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg cterm=NONE 
    CSAHi DiffDelete term=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff cterm=bold 
    CSAHi DiffText term=reverse ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg cterm=bold 
    CSAHi SignColumn term=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi Conceal term=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3 cterm=NONE 
    CSAHi SpellBad term=reverse ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000 cterm=undercurl 
    CSAHi SpellCap term=reverse ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff cterm=undercurl 
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE ctermbg=235 ctermfg=231 gui=NONE guibg=#242424 guifg=#f6f3e8 cterm=NONE 
    CSAHi Statement term=bold ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE 
    CSAHi PreProc term=underline ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Type term=underline ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi Underlined term=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff cterm=underline 
    CSAHi Ignore term=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=#242424 cterm=NONE 
    CSAHi Error term=reverse ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi Todo term=NONE ctermbg=226 ctermfg=245 gui=italic guibg=#ffff00 guifg=#8f8f8f cterm=italic 
    CSAHi String term=NONE ctermbg=bg ctermfg=192 gui=italic guibg=bg guifg=#95e454 cterm=italic 
    CSAHi Number term=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi SpecialKey term=bold ctermbg=236 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080 cterm=NONE 
    CSAHi NonText term=bold ctermbg=236 ctermfg=244 gui=NONE guibg=#303030 guifg=#808080 cterm=NONE 
    CSAHi Directory term=bold ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff cterm=NONE 
    CSAHi ErrorMsg term=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi IncSearch term=reverse ctermbg=231 ctermfg=235 gui=reverse guibg=bg guifg=fg cterm=reverse 
    CSAHi Search term=reverse ctermbg=228 ctermfg=235 gui=NONE guibg=#ffff66 guifg=#242424 cterm=NONE 
    CSAHi MoreMsg term=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57 cterm=bold 
    CSAHi ModeMsg term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi LineNr term=underline ctermbg=16 ctermfg=145 gui=NONE guibg=#000000 guifg=#857b6f cterm=NONE 
    CSAHi UtlTag term=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg cterm=NONE 
    CSAHi Keyword term=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE 
    CSAHi cppSTL term=NONE ctermbg=bg ctermfg=158 gui=NONE guibg=bg guifg=#81dfbf cterm=NONE 
    CSAHi Trilinos term=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleActive term=NONE ctermbg=235 ctermfg=229 gui=NONE guibg=#242424 guifg=#cae682 cterm=NONE 
    CSAHi MBEVisibleChangedActive term=NONE ctermbg=235 ctermfg=217 gui=NONE guibg=#242424 guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleChanged term=NONE ctermbg=235 ctermfg=141 gui=NONE guibg=#242424 guifg=#8b63d8 cterm=NONE 
    CSAHi MBEVisibleNormal term=NONE ctermbg=235 ctermfg=159 gui=NONE guibg=#242424 guifg=#8ac6f2 cterm=NONE 
    CSAHi SpellRare term=reverse ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff cterm=undercurl 
    CSAHi SpellLocal term=underline ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff cterm=undercurl 
    CSAHi Pmenu term=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi PmenuSel term=NONE ctermbg=229 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000 cterm=NONE 
    CSAHi PmenuSbar term=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg cterm=NONE 
    CSAHi PmenuThumb term=NONE ctermbg=255 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg cterm=NONE 
    CSAHi TabLine term=underline ctermbg=236 ctermfg=244 gui=italic guibg=#303030 guifg=#808080 cterm=italic 
    CSAHi TabLineSel term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi TabLineFill term=reverse ctermbg=238 ctermfg=fg gui=NONE guibg=#444444 guifg=fg cterm=NONE 
    CSAHi CursorColumn term=reverse ctermbg=59 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi Function term=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi CursorLineNr term=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00 cterm=bold 
    CSAHi Question term=NONE ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ff00 cterm=bold 
    CSAHi StatusLine term=reverse,bold ctermbg=238 ctermfg=231 gui=italic guibg=#444444 guifg=#f6f3e8 cterm=italic 
    CSAHi StatusLineNC term=reverse ctermbg=238 ctermfg=145 gui=NONE guibg=#444444 guifg=#857b6f cterm=NONE 
    CSAHi VertSplit term=reverse ctermbg=238 ctermfg=238 gui=NONE guibg=#444444 guifg=#444444 cterm=NONE 
    CSAHi Title term=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8 cterm=bold 
    CSAHi Visual term=reverse ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi VisualNOS term=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg cterm=bold,underline 
    CSAHi WarningMsg term=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000 cterm=NONE 
    CSAHi WildMenu term=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000 cterm=NONE 
    CSAHi CursorLine term=underline ctermbg=59 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi ColorColumn term=reverse ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg cterm=NONE 
    CSAHi Cursor term=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#656565 guifg=fg cterm=NONE 
    CSAHi lCursor term=NONE ctermbg=231 ctermfg=235 gui=NONE guibg=#f6f3e8 guifg=#242424 cterm=NONE 
    CSAHi MatchParen term=reverse ctermbg=145 ctermfg=231 gui=bold guibg=#857b6f guifg=#f6f3e8 cterm=bold 
    CSAHi Comment term=italic ctermbg=bg ctermfg=187 gui=italic guibg=bg guifg=#99968b cterm=italic 
    CSAHi Constant term=underline ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Special term=bold ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#e7f6da cterm=NONE 
    CSAHi Identifier term=underline ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi MBEChanged term=NONE ctermbg=235 ctermfg=208 gui=NONE guibg=#242424 guifg=#cd5907 cterm=NONE 
    CSAHi MBENormal term=NONE ctermbg=235 ctermfg=244 gui=NONE guibg=#242424 guifg=#808080 cterm=NONE 
    CSAHi Structure term=NONE ctermbg=bg ctermfg=176 gui=NONE guibg=bg guifg=#996699 cterm=NONE 
    CSAHi Folded term=NONE ctermbg=66 ctermfg=188 gui=NONE guibg=#384048 guifg=#a0a8b0 cterm=NONE 
    CSAHi FoldColumn term=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi DiffAdd term=bold ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg cterm=NONE 
    CSAHi DiffChange term=bold ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg cterm=NONE 
    CSAHi DiffDelete term=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff cterm=bold 
    CSAHi DiffText term=reverse ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg cterm=bold 
    CSAHi SignColumn term=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi Conceal term=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3 cterm=NONE 
    CSAHi SpellBad term=reverse ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000 cterm=undercurl 
    CSAHi SpellCap term=reverse ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff cterm=undercurl 
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE ctermbg=235 ctermfg=230 gui=NONE guibg=#242424 guifg=#f6f3e8 cterm=NONE 
    CSAHi Statement term=bold ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE 
    CSAHi PreProc term=underline ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Type term=underline ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi Underlined term=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff cterm=underline 
    CSAHi Ignore term=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=#242424 cterm=NONE 
    CSAHi Error term=reverse ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi Todo term=NONE ctermbg=226 ctermfg=245 gui=italic guibg=#ffff00 guifg=#8f8f8f cterm=italic 
    CSAHi String term=NONE ctermbg=bg ctermfg=113 gui=italic guibg=bg guifg=#95e454 cterm=italic 
    CSAHi Number term=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi SpecialKey term=bold ctermbg=236 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080 cterm=NONE 
    CSAHi NonText term=bold ctermbg=236 ctermfg=244 gui=NONE guibg=#303030 guifg=#808080 cterm=NONE 
    CSAHi Directory term=bold ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff cterm=NONE 
    CSAHi ErrorMsg term=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi IncSearch term=reverse ctermbg=230 ctermfg=235 gui=reverse guibg=bg guifg=fg cterm=reverse 
    CSAHi Search term=reverse ctermbg=227 ctermfg=235 gui=NONE guibg=#ffff66 guifg=#242424 cterm=NONE 
    CSAHi MoreMsg term=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57 cterm=bold 
    CSAHi ModeMsg term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi LineNr term=underline ctermbg=16 ctermfg=101 gui=NONE guibg=#000000 guifg=#857b6f cterm=NONE 
    CSAHi UtlTag term=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg cterm=NONE 
    CSAHi Keyword term=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE 
    CSAHi cppSTL term=NONE ctermbg=bg ctermfg=115 gui=NONE guibg=bg guifg=#81dfbf cterm=NONE 
    CSAHi Trilinos term=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleActive term=NONE ctermbg=235 ctermfg=186 gui=NONE guibg=#242424 guifg=#cae682 cterm=NONE 
    CSAHi MBEVisibleChangedActive term=NONE ctermbg=235 ctermfg=173 gui=NONE guibg=#242424 guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleChanged term=NONE ctermbg=235 ctermfg=98 gui=NONE guibg=#242424 guifg=#8b63d8 cterm=NONE 
    CSAHi MBEVisibleNormal term=NONE ctermbg=235 ctermfg=117 gui=NONE guibg=#242424 guifg=#8ac6f2 cterm=NONE 
    CSAHi SpellRare term=reverse ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff cterm=undercurl 
    CSAHi SpellLocal term=underline ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff cterm=undercurl 
    CSAHi Pmenu term=NONE ctermbg=238 ctermfg=230 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi PmenuSel term=NONE ctermbg=186 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000 cterm=NONE 
    CSAHi PmenuSbar term=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg cterm=NONE 
    CSAHi PmenuThumb term=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg cterm=NONE 
    CSAHi TabLine term=underline ctermbg=236 ctermfg=244 gui=italic guibg=#303030 guifg=#808080 cterm=italic 
    CSAHi TabLineSel term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi TabLineFill term=reverse ctermbg=238 ctermfg=fg gui=NONE guibg=#444444 guifg=fg cterm=NONE 
    CSAHi CursorColumn term=reverse ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi Function term=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi CursorLineNr term=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00 cterm=bold 
    CSAHi Question term=NONE ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ff00 cterm=bold 
    CSAHi StatusLine term=reverse,bold ctermbg=238 ctermfg=230 gui=italic guibg=#444444 guifg=#f6f3e8 cterm=italic 
    CSAHi StatusLineNC term=reverse ctermbg=238 ctermfg=101 gui=NONE guibg=#444444 guifg=#857b6f cterm=NONE 
    CSAHi VertSplit term=reverse ctermbg=238 ctermfg=238 gui=NONE guibg=#444444 guifg=#444444 cterm=NONE 
    CSAHi Title term=bold ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#f6f3e8 cterm=bold 
    CSAHi Visual term=reverse ctermbg=238 ctermfg=230 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi VisualNOS term=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg cterm=bold,underline 
    CSAHi WarningMsg term=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000 cterm=NONE 
    CSAHi WildMenu term=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000 cterm=NONE 
    CSAHi CursorLine term=underline ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi ColorColumn term=reverse ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg cterm=NONE 
    CSAHi Cursor term=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#656565 guifg=fg cterm=NONE 
    CSAHi lCursor term=NONE ctermbg=230 ctermfg=235 gui=NONE guibg=#f6f3e8 guifg=#242424 cterm=NONE 
    CSAHi MatchParen term=reverse ctermbg=101 ctermfg=230 gui=bold guibg=#857b6f guifg=#f6f3e8 cterm=bold 
    CSAHi Comment term=italic ctermbg=bg ctermfg=102 gui=italic guibg=bg guifg=#99968b cterm=italic 
    CSAHi Constant term=underline ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Special term=bold ctermbg=bg ctermfg=194 gui=NONE guibg=bg guifg=#e7f6da cterm=NONE 
    CSAHi Identifier term=underline ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi MBEChanged term=NONE ctermbg=235 ctermfg=166 gui=NONE guibg=#242424 guifg=#cd5907 cterm=NONE 
    CSAHi MBENormal term=NONE ctermbg=235 ctermfg=244 gui=NONE guibg=#242424 guifg=#808080 cterm=NONE 
    CSAHi Structure term=NONE ctermbg=bg ctermfg=96 gui=NONE guibg=bg guifg=#996699 cterm=NONE 
    CSAHi Folded term=NONE ctermbg=59 ctermfg=145 gui=NONE guibg=#384048 guifg=#a0a8b0 cterm=NONE 
    CSAHi FoldColumn term=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi DiffAdd term=bold ctermbg=18 ctermfg=fg gui=NONE guibg=#00008b guifg=fg cterm=NONE 
    CSAHi DiffChange term=bold ctermbg=90 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg cterm=NONE 
    CSAHi DiffDelete term=bold ctermbg=30 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff cterm=bold 
    CSAHi DiffText term=reverse ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg cterm=bold 
    CSAHi SignColumn term=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi Conceal term=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3 cterm=NONE 
    CSAHi SpellBad term=reverse ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000 cterm=undercurl 
    CSAHi SpellCap term=reverse ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff cterm=undercurl 
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#242424 guifg=#f6f3e8 cterm=NONE 
    CSAHi Statement term=bold ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE 
    CSAHi PreProc term=underline ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Type term=underline ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi Underlined term=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff cterm=underline 
    CSAHi Ignore term=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#242424 cterm=NONE 
    CSAHi Error term=reverse ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi Todo term=NONE ctermbg=76 ctermfg=83 gui=italic guibg=#ffff00 guifg=#8f8f8f cterm=italic 
    CSAHi String term=NONE ctermbg=bg ctermfg=41 gui=italic guibg=bg guifg=#95e454 cterm=italic 
    CSAHi Number term=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi SpecialKey term=bold ctermbg=80 ctermfg=83 gui=NONE guibg=#343434 guifg=#808080 cterm=NONE 
    CSAHi NonText term=bold ctermbg=80 ctermfg=83 gui=NONE guibg=#303030 guifg=#808080 cterm=NONE 
    CSAHi Directory term=bold ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff cterm=NONE 
    CSAHi ErrorMsg term=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff cterm=NONE 
    CSAHi IncSearch term=reverse ctermbg=79 ctermfg=80 gui=reverse guibg=bg guifg=fg cterm=reverse 
    CSAHi Search term=reverse ctermbg=77 ctermfg=80 gui=NONE guibg=#ffff66 guifg=#242424 cterm=NONE 
    CSAHi MoreMsg term=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57 cterm=bold 
    CSAHi ModeMsg term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi LineNr term=underline ctermbg=16 ctermfg=37 gui=NONE guibg=#000000 guifg=#857b6f cterm=NONE 
    CSAHi UtlTag term=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg cterm=NONE 
    CSAHi Keyword term=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#8ac6f2 cterm=NONE 
    CSAHi cppSTL term=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#81dfbf cterm=NONE 
    CSAHi Trilinos term=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleActive term=NONE ctermbg=80 ctermfg=57 gui=NONE guibg=#242424 guifg=#cae682 cterm=NONE 
    CSAHi MBEVisibleChangedActive term=NONE ctermbg=80 ctermfg=53 gui=NONE guibg=#242424 guifg=#e5786d cterm=NONE 
    CSAHi MBEVisibleChanged term=NONE ctermbg=80 ctermfg=38 gui=NONE guibg=#242424 guifg=#8b63d8 cterm=NONE 
    CSAHi MBEVisibleNormal term=NONE ctermbg=80 ctermfg=43 gui=NONE guibg=#242424 guifg=#8ac6f2 cterm=NONE 
    CSAHi SpellRare term=reverse ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff cterm=undercurl 
    CSAHi SpellLocal term=underline ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff cterm=undercurl 
    CSAHi Pmenu term=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi PmenuSel term=NONE ctermbg=57 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000 cterm=NONE 
    CSAHi PmenuSbar term=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg cterm=NONE 
    CSAHi PmenuThumb term=NONE ctermbg=79 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg cterm=NONE 
    CSAHi TabLine term=underline ctermbg=80 ctermfg=83 gui=italic guibg=#303030 guifg=#808080 cterm=italic 
    CSAHi TabLineSel term=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg cterm=bold 
    CSAHi TabLineFill term=reverse ctermbg=80 ctermfg=fg gui=NONE guibg=#444444 guifg=fg cterm=NONE 
    CSAHi CursorColumn term=reverse ctermbg=80 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi Function term=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi CursorLineNr term=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=#ffff00 cterm=bold 
    CSAHi Question term=NONE ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=#00ff00 cterm=bold 
    CSAHi StatusLine term=reverse,bold ctermbg=80 ctermfg=79 gui=italic guibg=#444444 guifg=#f6f3e8 cterm=italic 
    CSAHi StatusLineNC term=reverse ctermbg=80 ctermfg=37 gui=NONE guibg=#444444 guifg=#857b6f cterm=NONE 
    CSAHi VertSplit term=reverse ctermbg=80 ctermfg=80 gui=NONE guibg=#444444 guifg=#444444 cterm=NONE 
    CSAHi Title term=bold ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#f6f3e8 cterm=bold 
    CSAHi Visual term=reverse ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#f6f3e8 cterm=NONE 
    CSAHi VisualNOS term=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg cterm=bold,underline 
    CSAHi WarningMsg term=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000 cterm=NONE 
    CSAHi WildMenu term=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000 cterm=NONE 
    CSAHi CursorLine term=underline ctermbg=80 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg cterm=NONE 
    CSAHi ColorColumn term=reverse ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg cterm=NONE 
    CSAHi Cursor term=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#656565 guifg=fg cterm=NONE 
    CSAHi lCursor term=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#f6f3e8 guifg=#242424 cterm=NONE 
    CSAHi MatchParen term=reverse ctermbg=37 ctermfg=79 gui=bold guibg=#857b6f guifg=#f6f3e8 cterm=bold 
    CSAHi Comment term=italic ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#99968b cterm=italic 
    CSAHi Constant term=underline ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#e5786d cterm=NONE 
    CSAHi Special term=bold ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#e7f6da cterm=NONE 
    CSAHi Identifier term=underline ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#cae682 cterm=NONE 
    CSAHi MBEChanged term=NONE ctermbg=80 ctermfg=52 gui=NONE guibg=#242424 guifg=#cd5907 cterm=NONE 
    CSAHi MBENormal term=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#242424 guifg=#808080 cterm=NONE 
    CSAHi Structure term=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#996699 cterm=NONE 
    CSAHi Folded term=NONE ctermbg=17 ctermfg=38 gui=NONE guibg=#384048 guifg=#a0a8b0 cterm=NONE 
    CSAHi FoldColumn term=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi DiffAdd term=bold ctermbg=17 ctermfg=fg gui=NONE guibg=#00008b guifg=fg cterm=NONE 
    CSAHi DiffChange term=bold ctermbg=33 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg cterm=NONE 
    CSAHi DiffDelete term=bold ctermbg=21 ctermfg=19 gui=bold guibg=#008b8b guifg=#0000ff cterm=bold 
    CSAHi DiffText term=reverse ctermbg=64 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg cterm=bold 
    CSAHi SignColumn term=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=#bebebe guifg=#00ffff cterm=NONE 
    CSAHi Conceal term=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3 cterm=NONE 
    CSAHi SpellBad term=reverse ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000 cterm=undercurl 
    CSAHi SpellCap term=reverse ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff cterm=undercurl 
endif

if 1
    delcommand CSAHi
endif
