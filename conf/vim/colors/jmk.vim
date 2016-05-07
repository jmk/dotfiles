" Maintainer:	Jason Kim <jason@512k.org>

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="jmk"

hi Normal	guifg=White guibg=Grey5

" highlight groups
hi Cursor	guibg=gold guifg=black
hi CursorLine	guibg=#1a2530 cterm=none
hi CursorLineNR	guifg=#9e8d50 gui=none
"hi CursorIM
hi Directory	guifg=SkyBlue gui=none
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit	guibg=grey5 guifg=grey50 gui=none
hi Folded	guibg=grey20 guifg=SkyBlue
hi FoldColumn	guibg=grey20 guifg=tan
hi IncSearch	guifg=DeepPink guibg=white
hi LineNr	guifg=grey30
hi ModeMsg	guifg=gold
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey15 gui=none
hi Question	guifg=springgreen
hi Search	guibg=DeepPink guifg=white
hi SpecialKey	guifg=#3064a8
hi StatusLine	guibg=#ffffff guifg=black gui=none
hi StatusLine	guibg=white guifg=black gui=none
hi StatusLineNC	guibg=#444444 guifg=#aaaaaa gui=none
hi Title	guifg=indianred
hi Visual	gui=none guibg=#333e1f guifg=#e5f9bb
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment	guifg=SkyBlue guibg=#0f263e
hi Constant	guifg=#db2e2e
hi Identifier	guifg=palegreen
hi PreProc	guifg=#b45982 ctermfg=red
hi Special	guifg=navajowhite
hi Statement	guifg=gold
hi Type		guifg=#12c326 gui=bold
hi Ignore	guifg=grey40
hi Todo		guifg=red guibg=yellow gui=bold


"vim: sw=4
