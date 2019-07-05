set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="serape"

" Editor settings
hi Normal          ctermfg=none    ctermbg=none
hi Cursor          ctermfg=26      ctermbg=7
hi CursorLine      ctermfg=235     ctermbg=none
hi LineNr          ctermfg=245     ctermbg=none
hi CursorLineNR    ctermfg=15      ctermbg=none

" Number column
hi CursorColumn    ctermfg=255     ctermbg=235      cterm=reverse
hi FoldColumn      ctermfg=66      ctermbg=none     cterm=standout
hi SignColumn      ctermfg=149     ctermbg=74       cterm=standout
hi Folded          ctermfg=none    ctermbg=235

" Window/Tab delimiters
hi VertSplit       ctermfg=235     ctermbg=235
hi ColorColumn     ctermfg=none    ctermbg=235
hi TabLine         ctermfg=253     ctermbg=235
hi TabLineFill     ctermfg=240     ctermbg=235
hi TabLineSel      ctermfg=253     ctermbg=235

" File Navigation / Searching
hi Directory       ctermfg=149     ctermbg=none
hi Search          ctermfg=15      ctermbg=26
hi IncSearch       ctermfg=12      ctermbg=15

" Prompt/Status
hi StatusLine      ctermfg=255     ctermbg=235      cterm=bold
hi StatusLineNC    ctermfg=245     ctermbg=235      cterm=bold
hi WildMenu        ctermfg=214     ctermbg=none
hi Question        ctermfg=none    ctermbg=none
hi Title           ctermfg=15      ctermbg=none     cterm=bold
hi ModeMsg         ctermfg=15      ctermbg=none     cterm=bold
hi MoreMsg         ctermfg=15      ctermbg=none     cterm=bold

" Visual aid
hi MatchParen      ctermfg=0       ctermbg=140
hi Visual          ctermfg=none    ctermbg=240
hi VisualNOS       ctermfg=none    ctermbg=240
hi NonText         ctermfg=245     ctermbg=none

hi Todo            ctermfg=160     ctermbg=52
hi Underlined      ctermfg=81      ctermbg=none
hi Error           ctermfg=15      ctermbg=9
hi ErrorMsg        ctermfg=none    ctermbg=none
hi WarningMsg      ctermfg=none    ctermbg=none
hi Ignore          ctermfg=0       ctermbg=0
hi SpecialKey      ctermfg=238     ctermbg=234

" Variable type
hi Constant        ctermfg=32      ctermbg=none
hi String          ctermfg=32      ctermbg=none
hi StringDelimiter ctermfg=26      ctermbg=none
hi Character       ctermfg=32      ctermbg=none
hi Number          ctermfg=38      ctermbg=none     cterm=bold
hi Boolean         ctermfg=32      ctermbg=none
hi Float           ctermfg=38      ctermbg=none     cterm=bold

hi Identifier      ctermfg=197     ctermbg=none     cterm=bold
hi Function        ctermfg=199     ctermbg=none     cterm=bold

" Language construct
hi Statement       ctermfg=202     ctermbg=none     cterm=bold
hi Conditional     ctermfg=202     ctermbg=none     cterm=bold
hi Repeat          ctermfg=202     ctermbg=none     cterm=bold
hi Operator        ctermfg=214     ctermbg=none
hi Label           ctermfg=202     ctermbg=none     cterm=bold
hi Keyword         ctermfg=202     ctermbg=none     cterm=bold
hi Exception       ctermfg=202     ctermbg=none     cterm=bold
hi Comment         ctermfg=244     ctermbg=none

hi Special         ctermfg=214     ctermbg=none
hi SpecialChar     ctermfg=214     ctermbg=none
hi Tag             ctermfg=214     ctermbg=none
hi Delimiter       ctermfg=214     ctermbg=none
hi SpecialComment  ctermfg=244     ctermbg=none
hi Debug           ctermfg=214     ctermbg=none

" C like
hi PreProc         ctermfg=197     ctermbg=none     cterm=bold
hi Include         ctermfg=196     ctermbg=none     cterm=bold
hi Define          ctermfg=196     ctermbg=none     cterm=bold
hi Macro           ctermfg=196     ctermbg=none     cterm=bold
hi PreCondit       ctermfg=196     ctermbg=none

hi Type            ctermfg=104     ctermbg=none     cterm=bold
hi StorageClass    ctermfg=104     ctermbg=none     cterm=bold
hi Structure       ctermfg=104     ctermbg=none     cterm=bold
hi Typedef         ctermfg=104     ctermbg=none     cterm=bold

" Diff
hi DiffAdd         ctermfg=none    ctermbg=none
hi DiffChange      ctermfg=none    ctermbg=none
hi DiffDelete      ctermfg=none    ctermbg=none
hi DiffText        ctermfg=none    ctermbg=none

" Completion menu
hi Pmenu           ctermfg=15      ctermbg=235
hi PmenuSel        ctermfg=229     ctermbg=235      cterm=bold
hi PmenuSbar       ctermfg=229     ctermbg=229
hi PmenuThumb      ctermfg=none    ctermbg=235

" Spelling
hi SpellBad        ctermfg=9       ctermbg=none     cterm=underline
hi SpellCap        ctermfg=51      ctermbg=none     cterm=underline
hi SpellLocal      ctermfg=9       ctermbg=none     cterm=underline
hi SpellRare       ctermfg=51      ctermbg=none     cterm=underline
