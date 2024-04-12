" Serape Color Scheme
" File:     ~/.vim/colors/serape.vim
" Author:   Jason Long <jasonlongball@gmail.com>
" Version:  v0.2.3

if v:version > 600
  highlight clear
endif

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name="serape"

" Editor settings
hi Normal          ctermfg=NONE guifg=#ffffff ctermbg=NONE guibg=#000000
hi Cursor          ctermfg=26   guifg=#005fd7 ctermbg=7    guibg=#c0c0c0
hi CursorLine      ctermfg=NONE guifg=NONE    ctermbg=NONE guibg=NONE    cterm=underline gui=underline
hi LineNr          ctermfg=245  guifg=#8a8a8a ctermbg=NONE guibg=NONE
hi CursorLineNR    ctermfg=184  guifg=#d7d700 ctermbg=NONE guibg=NONE    cterm=bold cterm=bold

" Number column
hi CursorColumn    ctermfg=255 guifg=#eeeeee ctermbg=235 guibg=#262626 cterm=reverse gui=reverse
hi FoldColumn      ctermfg=245 guifg=#8a8a8a ctermbg=235 guibg=#262626
hi SignColumn      ctermfg=15  guifg=#ffffff ctermbg=235 guibg=#262626
hi Folded          ctermfg=245 guifg=#8a8a8a ctermbg=235 guibg=#262626

" Window/Tab delimiters
hi VertSplit       ctermfg=235  guifg=#262626 ctermbg=235 guibg=#262626
hi ColorColumn     ctermfg=NONE guifg=NONE    ctermbg=235 guibg=#262626
hi TabLine         ctermfg=253  guifg=#dadada ctermbg=235 guibg=#262626
hi TabLineFill     ctermfg=240  guifg=#585858 ctermbg=235 guibg=#262626
hi TabLineSel      ctermfg=253  guifg=#dadada ctermbg=235 guibg=#262626

" File Navigation / Searching
hi Directory       ctermfg=149 guifg=#afd75f ctermbg=NONE guibg=NONE
hi Search          ctermfg=15  guifg=#ffffff ctermbg=202  guibg=#ff5f00
hi IncSearch       ctermfg=172 guifg=#d78700 ctermbg=15   guibg=#ffffff

" Prompt/Status
hi StatusLine      ctermfg=255  guifg=#eeeeee ctermbg=235  guibg=#262626 cterm=bold gui=bold
hi StatusLineNC    ctermfg=245  guifg=#8a8a8a ctermbg=235  guibg=#262626 cterm=bold gui=bold
hi WildMenu        ctermfg=32   guifg=#0087d7 ctermbg=235  guibg=#262626 cterm=bold gui=bold
hi Question        ctermfg=NONE guifg=NONE    ctermbg=NONE guibg=NONE
hi Title           ctermfg=15   guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi ModeMsg         ctermfg=15   guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi MoreMsg         ctermfg=15   guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold

" Visual aid
hi MatchParen      ctermfg=NONE guifg=NONE    ctermbg=241  guibg=#626262 cterm=bold    gui=bold
hi Visual          ctermfg=NONE guifg=NONE    ctermbg=NONE guibg=NONE    cterm=reverse gui=reverse
hi VisualNOS       ctermfg=NONE guifg=NONE    ctermbg=NONE guibg=NONE    cterm=reverse gui=reverse
hi NonText         ctermfg=245  guifg=#8a8a8a ctermbg=NONE guibg=NONE

hi Todo            ctermfg=11  guifg=#ffff00 ctermbg=NONE guibg=NONE    cterm=bold gui=bold
hi Underlined      ctermfg=81  guifg=#5fd7ff ctermbg=NONE guibg=NONE
hi Error           ctermfg=15  guifg=#ffffff ctermbg=9    guibg=#ff0000
hi ErrorMsg        ctermfg=9   guifg=#ff0000 ctermbg=15   guibg=#ffffff cterm=reverse,bold gui=reverse,bold
hi WarningMsg      ctermfg=11  guifg=#ffff00 ctermbg=NONE guibg=NONE    cterm=reverse,bold gui=reverse,bold
hi Ignore          ctermfg=0   guifg=#000000 ctermbg=0    guibg=#000000
hi SpecialKey      ctermfg=238 guifg=#444444 ctermbg=234  guibg=#1c1c1c

" Variable type
hi Constant        ctermfg=32 guifg=#0087d7 ctermbg=NONE guibg=NONE
hi String          ctermfg=32 guifg=#0087d7 ctermbg=NONE guibg=NONE
hi StringDelimiter ctermfg=26 guifg=#005fd7 ctermbg=NONE guibg=NONE
hi Character       ctermfg=32 guifg=#0087d7 ctermbg=NONE guibg=NONE
hi Number          ctermfg=38 guifg=#00afd7 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Boolean         ctermfg=32 guifg=#0087d7 ctermbg=NONE guibg=NONE
hi Float           ctermfg=38 guifg=#00afd7 ctermbg=NONE guibg=NONE cterm=bold gui=bold

hi Identifier      ctermfg=15 guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Function        ctermfg=12 guifg=#005fff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE

" Language construct
hi Statement       ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Conditional     ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Repeat          ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Operator        ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE
hi Label           ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Keyword         ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Exception       ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Comment         ctermfg=244 guifg=#808080 ctermbg=NONE guibg=NONE

hi Special         ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE
hi SpecialChar     ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE
hi Tag             ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE
hi Delimiter       ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE
hi SpecialComment  ctermfg=244 guifg=#808080 ctermbg=NONE guibg=NONE
hi Debug           ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE

" C like
hi PreProc         ctermfg=196 guifg=#ff0000 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Include         ctermfg=196 guifg=#ff0000 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi Define          ctermfg=196 guifg=#ff0000 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi Macro           ctermfg=196 guifg=#ff0000 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi PreCondit       ctermfg=196 guifg=#ff0000 ctermbg=NONE guibg=NONE cterm=bold gui=bold

hi Type            ctermfg=154 guifg=#afff00 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi StorageClass    ctermfg=154 guifg=#afff00 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi Structure       ctermfg=154 guifg=#afff00 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi Typedef         ctermfg=154 guifg=#afff00 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE

" Diff
hi DiffAdd         ctermfg=15 guifg=#ffffff ctermbg=22   guibg=#005f00
hi DiffChange      ctermfg=15 guifg=#ffffff ctermbg=18   guibg=#000087
hi DiffDelete      ctermfg=88 guifg=#860000 ctermbg=88   guibg=#860000
hi DiffText        ctermfg=11 guifg=#ffff00 ctermbg=0    guibg=#000000 cterm=reverse gui=reverse
hi DiffFile        ctermfg=15 guifg=#ffffff ctermbg=NONE guibg=NONE    cterm=bold gui=bold

" Diff files (patches)
hi DiffAdded       ctermfg=10  guifg=#00ff00 ctermbg=NONE guibg=NONE
hi DiffChanged     ctermfg=18  guifg=#000087 ctermbg=NONE guibg=NONE
hi DiffRemoved     ctermfg=9   guifg=#ff0000 ctermbg=NONE guibg=NONE
hi DiffSubname     ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi DiffIndexLine   ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold

" Completion menu
hi Pmenu           ctermfg=15   guifg=#ffffff ctermbg=235 guibg=#262626
hi PmenuSel        ctermfg=0    guifg=#000000 ctermbg=15  guibg=#ffffff
hi PmenuSbar       ctermfg=NONE guifg=NONE    ctermbg=235 guibg=#262626
hi PmenuThumb      ctermfg=NONE guifg=NONE    ctermbg=15  guibg=#ffffff

" Spelling
hi SpellBad        ctermfg=9  guifg=#ff0000 ctermbg=NONE guibg=NONE
hi SpellCap        ctermfg=51 guifg=#00ffff ctermbg=NONE guibg=NONE
hi SpellLocal      ctermfg=9  guifg=#ff0000 ctermbg=NONE guibg=NONE
hi SpellRare       ctermfg=51 guifg=#00ffff ctermbg=NONE guibg=NONE

" Git Commit
hi GitCommitSummary ctermfg=12 guifg=#0000ff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi GitCommitType    ctermfg=15 guifg=#ffffff ctermbg=NONE guibg=NONE

" HTML Tags
hi htmlTag         ctermfg=39  guifg=#00afff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi htmlEndTag      ctermfg=39  guifg=#00afff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi htmlTagName     ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE
hi htmlTagN        ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE
hi htmlEvent       ctermfg=15  guifg=#ffffff ctermbg=NONE guibg=NONE
hi htmlSpecialChar ctermfg=77  guifg=#5fd787 ctermbg=NONE guibg=NONE

" Javascript
hi jsFuncName      ctermfg=134 guifg=#af5fd7 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi jsThis          ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE cterm=bold gui=bold

" CSS
hi cssClassName    ctermfg=134 guifg=#af5fd7 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi cssClassNameDot ctermfg=15  guifg=#ffffff ctermbg=NONE guibg=NONE
hi cssIdentifier   ctermfg=133 guifg=#af5faf ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi cssBraces       ctermfg=15  guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold

" Python
hi pythonImport    ctermfg=196 guifg=#ff0000 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi pythonEscape    ctermfg=26  guifg=#005fd7 ctermbg=NONE guibg=NONE cterm=bold gui=bold

" Make
hi makeTarget      ctermfg=202 guifg=#ff5f00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi makeSpecTarget  ctermfg=11  guifg=#ffff00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi makeCommands    ctermfg=153 guifg=#afd7ff ctermbg=NONE guibg=NONE cterm=bold gui=bold

" NERD Tree
hi NERDTreeDir      ctermfg=214 guifg=#ffaf00 ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi NERDTreeDirSlash ctermfg=15  guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi NERDTreeClosable ctermfg=15  guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold
hi NERDTreeOpenable ctermfg=15  guifg=#ffffff ctermbg=NONE guibg=NONE cterm=bold gui=bold

" Terminal
hi StatusLineTerm   ctermfg=15  guifg=#ffffff ctermbg=235 guibg=#262626 cterm=bold gui=bold
hi StatusLineTermNC ctermfg=245 guifg=#8a8a8a ctermbg=235 guibg=#262626 cterm=bold gui=bold
