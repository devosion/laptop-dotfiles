set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "dark"

hi Normal ctermfg=white
hi Comment ctermfg=lightgray
hi Constant ctermfg=green
hi Operator ctermfg=red
hi Special ctermfg=darkred
hi Statement ctermfg=blue
hi Visual ctermbg=darkgreen ctermfg=black
hi PreProc ctermfg=darkmagenta
hi Directory ctermfg=magenta
hi MoreMsg ctermfg=darkmagenta
hi ModeMsg ctermfg=yellow
hi Question ctermfg=red
hi SpecialKey ctermfg=white
hi Type ctermfg=lightgray
hi Identifier ctermfg=yellow
hi Error ctermbg=red ctermfg=white
hi TabLineFill ctermbg=black ctermfg=white cterm=none
hi TabLine ctermbg=black ctermfg=lightgray cterm=none
hi TabLineSel ctermbg=black ctermfg=white cterm=none
hi CursorLineNr ctermfg=white
hi LineNr ctermfg=darkgray
hi NonText ctermfg=black
hi ErrorMsg ctermfg=black ctermbg=yellow
hi VertSplit ctermfg=green
hi StatusLine ctermfg=green
hi StatusLineNC ctermfg=green
hi Folded ctermfg=white ctermbg=magenta
