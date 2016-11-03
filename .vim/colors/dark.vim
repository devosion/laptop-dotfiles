set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "dark"

hi Normal ctermfg=15
hi Comment ctermfg=7
hi Constant ctermfg=10
hi Operator ctermfg=1
hi Special ctermfg=14
hi Statement ctermfg=12
hi Visual ctermbg=10 ctermfg=0
hi PreProc ctermfg=1
hi Directory ctermfg=9
hi MoreMsg ctermfg=9
hi ModeMsg ctermfg=14
hi Question ctermfg=9
hi SpecialKey ctermfg=15
hi Type ctermfg=7
hi Identifier ctermfg=11
hi Error ctermbg=9 ctermfg=15
hi TabLineFill ctermbg=8 ctermfg=5 cterm=none
hi TabLine ctermbg=8 ctermfg=7 cterm=none
hi TabLineSel ctermbg=0 ctermfg=12 cterm=bold
hi Title ctermfg=15 cterm=bold
hi CursorLineNr ctermfg=15
hi LineNr ctermfg=238
hi NonText ctermfg=0
hi ErrorMsg ctermfg=0 ctermbg=11
hi VertSplit ctermfg=green
hi StatusLine ctermfg=green
hi StatusLineNC ctermfg=green
hi Folded ctermfg=4 ctermbg=8
