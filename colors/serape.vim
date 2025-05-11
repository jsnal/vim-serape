" Serape Color Scheme
" File:     ~/.vim/colors/serape.vim
" Author:   Jason Long <jasonlongball@gmail.com>
" Version:  v0.3.0

if v:version > 600
    highlight clear
endif

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "serape"

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg=" (has_key(a:style, "fg") ? a:style.fg.gui : "NONE")
    \ "guibg=" (has_key(a:style, "bg") ? a:style.bg.gui : "NONE")
    \ "guisp=" (has_key(a:style, "sp") ? a:style.sp.gui : "NONE")
    \ "gui=" (has_key(a:style, "style") ? a:style.style : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
    \ "cterm=" (has_key(a:style, "style") ? a:style.style : "NONE")
    \ "term=NONE"
endfunction

let s:gui00 = "#000000"
let s:gui01 = "#262626"
let s:gui02 = "#8A8A8A"
let s:gui03 = "#BFBFBF"
let s:gui04 = "#FF0000"
let s:gui05 = "#AFFF00"
let s:gui06 = "#008000"
let s:gui07 = "#0087D7"
let s:gui08 = "#0000FF"
let s:gui09 = "#005FD7"
let s:gui10 = "#5FD7FF"
let s:gui11 = "#FFFF00"
let s:gui12 = "#FF5F00"
let s:gui13 = "#FFAF00"
let s:gui14 = "#FFFFFF"

if exists("g:serape_16bit")
    let s:term00 = "0"
    let s:term01 = "8"
    let s:term02 = "7"
    let s:term03 = "7"
    let s:term04 = "9"
    let s:term05 = "10"
    let s:term06 = "2"
    let s:term07 = "6"
    let s:term08 = "12"
    let s:term09 = "4"
    let s:term10 = "14"
    let s:term11 = "11"
    let s:term12 = "3"
    let s:term13 = "3"
    let s:term14 = "15"
else
    let s:term00 = "0"
    let s:term01 = "235"
    let s:term02 = "245"
    let s:term03 = "251"
    let s:term04 = "196"
    let s:term05 = "154"
    let s:term06 = "2"
    let s:term07 = "32"
    let s:term08 = "12"
    let s:term09 = "26"
    let s:term10 = "38"
    let s:term11 = "11"
    let s:term12 = "202"
    let s:term13 = "214"
    let s:term14 = "15"
endif

let s:color00 = { "gui": s:gui00, "cterm": s:term00 } " Black
let s:color01 = { "gui": s:gui01, "cterm": s:term01 } " Dark Gray
let s:color02 = { "gui": s:gui02, "cterm": s:term02 } " Gray
let s:color03 = { "gui": s:gui03, "cterm": s:term03 } " Light Gray
let s:color04 = { "gui": s:gui04, "cterm": s:term04 } " Red
let s:color05 = { "gui": s:gui05, "cterm": s:term05 } " Light Green
let s:color06 = { "gui": s:gui06, "cterm": s:term06 } " Green
let s:color07 = { "gui": s:gui07, "cterm": s:term07 } " Light Blue
let s:color08 = { "gui": s:gui08, "cterm": s:term08 } " Blue
let s:color09 = { "gui": s:gui09, "cterm": s:term09 } " Dark Blue
let s:color10 = { "gui": s:gui10, "cterm": s:term10 } " Cyan
let s:color11 = { "gui": s:gui11, "cterm": s:term11 } " Yellow
let s:color12 = { "gui": s:gui12, "cterm": s:term12 } " Orange
let s:color13 = { "gui": s:gui13, "cterm": s:term13 } " Dark Orange
let s:color14 = { "gui": s:gui14, "cterm": s:term14 } " White

" Background and foreground
call s:h("Normal", { "bg": s:color00, "fg": s:color14 })

" Cursor
call s:h("CursorColumn", { "bg": s:color01 })
call s:h("Cursor", { "fg": s:color00, "bg": s:color14 })
call s:h("CursorLine", { "bg": s:color01 })
call s:h("CursorLineNR", { "fg": s:color02, "style": "bold" })
call s:h("QuickFixLine", { "bg": s:color01 })

" Column
call s:h("LineNR", { "fg": s:color02 })
call s:h("Folded", { "bg": s:color01, "fg": s:color02 })
call s:h("FoldColumn", { "bg": s:color01, "fg": s:color02 })
call s:h("SignColumn", { "bg": s:color01, "fg": s:color02 })
call s:h("ColorColumn", { "bg": s:color01 })

" Window and Tab separators
call s:h("VertSplit", { "bg": s:color14, "fg": s:color14 })
call s:h("TabLine", { "bg": s:color14, "fg": s:color00 })
call s:h("TabLineFill", { "bg": s:color14, "fg": s:color00 })
call s:h("TabLineSel", { "bg": s:color01, "fg": s:color14 })

" Searching
call s:h("Search", { "bg": s:color11, "fg": s:color00 })
call s:h("IncSearch", { "bg": s:color11, "fg": s:color00 })

" Statusline
call s:h("StatusLine", { "bg": s:color14, "fg": s:color00 })
call s:h("StatusLineNC", { "style": "reverse" })
call s:h("StatusLineTerm", { "bg": s:color14, "fg": s:color00 })
call s:h("StatusLineTermNC", { "style": "reverse" })

" Menu
call s:h("WildMenu", { "bg": s:color01, "fg": s:color14, "style": "bold" })
call s:h("Question", { "fg": s:color14, "style": "bold" })
call s:h("Title", { "fg": s:color14, "style": "bold" })
call s:h("MoreMsg", { "fg": s:color14, "style": "bold" })
call s:h("ModeMsg", { "fg": s:color14 })
call s:h("ErrorMsg", { "bg": s:color04, "fg": s:color14 })
call s:h("WarningMsg", { "bg": s:color11, "fg": s:color00 })

" Completion
call s:h("Pmenu", { "bg": s:color01, "fg": s:color14 })
call s:h("PmenuSel", { "bg": s:color14, "fg": s:color00 })
call s:h("PmenuSBar", { "bg": s:color01, "fg": s:color14 })
call s:h("PmenuThumb", { "bg": s:color14 })

" Visual aid
call s:h("Directory", { "fg": s:color10 })
call s:h("MatchParen", { "bg": s:color01 })
call s:h("Visual", { "style": "reverse" })
call s:h("VisualNOS", { "style": "reverse" })
call s:h("NonText", { "fg": s:color02 })
call s:h("Todo", { "fg": s:color11 })
call s:h("Underlined", { "fg": s:color10, "style": "underline" })
call s:h("Error", { "bg": s:color04, "fg": s:color14 })
call s:h("SpecialKey", { "bg": s:color01, "fg": s:color03 })

" Common language
call s:h("Comment", { "fg": s:color02 })
call s:h("Constant", { "fg": s:color07 })
call s:h("String", { "fg": s:color07 })
call s:h("StringDelimiter", { "fg": s:color09 })
call s:h("Character", { "fg": s:color07 })
call s:h("Boolean", { "fg": s:color07 })
call s:h("Number", { "fg": s:color10, "style": "bold" })
call s:h("Float", { "fg": s:color10, "style": "bold" })
call s:h("Identifier", { "fg": s:color14, "style": "bold" })
call s:h("Function", { "fg": s:color08 })
call s:h("Statement", { "fg": s:color12, "style": "bold" })
call s:h("Conditional", { "fg": s:color12, "style": "bold" })
call s:h("Repeat", { "fg": s:color12, "style": "bold" })
call s:h("Label", { "fg": s:color12, "style": "bold" })
call s:h("Operator", { "fg": s:color13 })
call s:h("Keyword", { "fg": s:color12, "style": "bold" })
call s:h("Exception", { "fg": s:color12, "style": "bold" })
call s:h("Type", { "fg": s:color05 })
call s:h("StorageClass", { "fg": s:color05 })
call s:h("Structure", { "fg": s:color05 })
call s:h("Typedef", { "fg": s:color05 })
call s:h("Special", { "fg": s:color13 })
call s:h("SpecialChar", { "fg": s:color13 })
call s:h("Tag", { "fg": s:color13 })
call s:h("Delimiter", { "fg": s:color13 })
call s:h("SpecialComment", { "fg": s:color02 })
call s:h("Debug", { "fg": s:color13 })

" C
call s:h("PreProc", { "fg": s:color04, "style": "bold" })
call s:h("Include", { "fg": s:color04 })
call s:h("Define", { "fg": s:color04, "style": "bold" })
call s:h("Macro", { "fg": s:color04, "style": "bold" })

" Diff files and buffers
call s:h("DiffAdd", { "fg": s:color14, "bg": s:color06 })
call s:h("DiffChange", { "fg": s:color14, "bg": s:color09 })
call s:h("DiffDelete", { "fg": s:color14, "bg": s:color04 })
call s:h("DiffText", { "fg": s:color00, "bg": s:color11 })
call s:h("DiffAdded", { "fg": s:color06 })
call s:h("DiffChanged", { "fg": s:color08 })
call s:h("DiffRemoved", { "fg": s:color04 })
call s:h("DiffSubname", { "fg": s:color14 })
call s:h("DiffIndexLine", { "fg": s:color05 })

" Spelling
call s:h("SpellBad", { "fg": s:color04 })
call s:h("SpellCap", { "fg": s:color10 })
call s:h("SpellLocal", { "fg": s:color04 })
call s:h("SpellRare", { "fg": s:color10, "style": "underline" })

" Git commit
call s:h("GitCommitSummary", { "fg": s:color08, "style": "bold" })
call s:h("GitCommitType", { "fg": s:color14 })

" HTML
call s:h("htmlTag", { "fg": s:color10 })
call s:h("htmlEndTag", { "fg": s:color10 })
call s:h("htmlTagName", { "fg": s:color13 })
call s:h("htmlTagN", { "fg": s:color13 })
call s:h("htmlEvent", { "fg": s:color14 })
call s:h("htmlSpecialChar", { "fg": s:color06 })

" Makefile
call s:h("makeTarget", { "fg": s:color12, "style": "bold" })
call s:h("makeSpecTarget", { "fg": s:color11, "style": "bold" })

set background=dark

