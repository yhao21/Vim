" ===============================================================
" Snazzy
" Author: Synferlo
" ===============================================================

" Setup
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
if has('termguicolors')
    set termguicolors
endif

let g:colors_name = "snazzy"
let g:mycolorTransparent = 1

" User Options
if !exists("g:mycolorTransparent")
    let g:mycolorTransparent = 0
endif

" Core
let  red      =  '#ff5c57'
let  green    =  '#5af78e'
" now yellow become a dark blue
let  yellow   =  '#2877c7'
"let  yellow   =  '#f3f99d'
let  blue     =  '#57c7ff'
let  magenta  =  '#ff6ac1'
let  cyan     =  '#9aedfe'
let  nord_white = '#A7BAD1'
" dark blue
let  nord_fg =  '#D8DEE9'
let nord_string = '#7eed72'

let nord_frost1 = '#8FBCBB'
let nord_frost2 = '#88C0D0'
let nord_frost3 = '#81A1C1'
let nord_frost4 = '#5E81AC'

"corsor line dark
let super_dark = '#1c1d1f'
"
"let nord11 = '#5E81AC'


"nord color

let  nord0 =  '#2E3440'
let  nord1 =  '#3B4252'
let  nord2 =  '#434C5E'
let  nord3 =  '#4C566A'
let  nord4 =  '#D8DEE9'
let  nord5 =  '#E5E9F0'
let  nord6 =  '#ECEFF4'
let  nord7 =  '#8FBCBB'
let  nord8 =  '#88C0D0'
let  nord9 =  '#81A1C1'
let  nord10 =  '#5E81AC'
let  nord11 =  '#BF616A'
let  nord12 =  '#D08770'
let  nord13 =  '#EBCB8B'
let  nord14 =  '#A3BE8C'
let  nord15 =  '#B48EAD'


" Grayscale
let  ui_0     =  '#F9F9F9'
let  ui_1     =  '#f9f9ff'
let  ui_2     =  '#eff0eb'
let  ui_3     =  '#e2e4e5'
let  ui_4     =  '#a1a6a8'
let  ui_5     =  '#848688'
" dark blue and getting darker
let  ui_6     =  '#5e6c70'
let  ui_7     =  '#536991'
let  ui_8     =  '#606580'
let  ui_9     =  '#3a3d4d'
let  ui_11    =  '#282a36'
let  ui_12    =  '#192224'

"grey
let g:terminal_color_0 = '#282a36'
"red
let g:terminal_color_1 = '#ff5c57'
"light green
let g:terminal_color_2 = '#5af78e'
"light yellow
let g:terminal_color_3 = '#f3f99d'
"light blue
let g:terminal_color_4 = '#57c7ff'
"light pink
let g:terminal_color_5 = '#ff6ac1'
"light blue
let g:terminal_color_6 = '#9aedfe'
"light grey
let g:terminal_color_7 = '#f1f1f0'
"dark grey
let g:terminal_color_8 = '#43454F'
"light red
let g:terminal_color_9 = '#ff5c57'
"light green
let g:terminal_color_10 = '#5af78e'
"light yellow
let g:terminal_color_11 = '#f3f99d'
"light blue
let g:terminal_color_12 = '#57c7ff'
"light pink
let g:terminal_color_13 = '#ff6ac1'
"light blue
let g:terminal_color_14 = '#9aedfe'
"light grey
let g:terminal_color_15 = '#eff0eb'

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --




:exe  'highlight  Normal          guifg='nord_white'      guibg='.ui_11.'   guisp='.ui_11.'   gui=NONE       ctermfg=White   ctermbg=Black   cterm=NONE'
":exe  'highlight  Normal          guifg='.ui_1.'      guibg='.ui_11.'   guisp='.ui_11.'   gui=NONE       ctermfg=White   ctermbg=Black   cterm=NONE'



"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi clear -- no settings --
:exe  'highlight  IncSearch       guifg='.ui_11.'    guibg='.yellow.'  guisp='.yellow.'  gui=NONE       ctermfg=237   ctermbg=229   cterm=NONE'
:exe  'highlight  WildMenu        guifg=NONE         guibg='.ui_4.'    guisp='.ui_4.'    gui=NONE       ctermfg=NONE  ctermbg=248   cterm=NONE'
:exe  'highlight  SignColumn      guifg='.ui_12.'    guibg='.ui_7.'    guisp='.ui_7.'    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  SpecialComment  guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Typedef         guifg='.ui_7.'     guibg=NONE        guisp=NONE        gui=bold       ctermfg=60    ctermbg=NONE  cterm=bold'
:exe  'highlight  Title           guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=bold       ctermfg=229   ctermbg=NONE  cterm=bold'
:exe  'highlight  Folded          guifg='.ui_12.'    guibg='.ui_4.'    guisp='.ui_4.'    gui=italic     ctermfg=235   ctermbg=248   cterm=NONE'
:exe  'highlight  PreCondit       guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Include         guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Float           guifg='.ui_4.'     guibg=NONE        guisp=NONE        gui=NONE       ctermfg=248   ctermbg=NONE  cterm=NONE'
:exe  'highlight  StatusLineNC    guifg='.ui_4.'     guibg='.ui_9.'    guisp='.ui_9.'    gui=bold       ctermfg=255   ctermbg=239   cterm=bold'



:exe  'highlight  NonText         guifg='nord_white'     guibg=NONE        guisp=NONE        gui=italic     ctermfg=66    ctermbg=NONE  cterm=NONE'
":exe  'highlight  NonText         guifg='.ui_6.'     guibg=NONE        guisp=NONE        gui=italic     ctermfg=66    ctermbg=NONE  cterm=NONE'



:exe  'highlight  DiffText        guifg='.red.'      guibg='.ui_9.'    guisp='.ui_9.'    gui=NONE       ctermfg=203   ctermbg=239   cterm=NONE'
:exe  'highlight  ErrorMsg        guifg='.red.'      guibg='.ui_11.'   guisp='.ui_11.'   gui=NONE       ctermfg=203   ctermbg=237   cterm=NONE'
:exe  'highlight  Debug           guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  PMenuSbar       guifg=NONE         guibg='.ui_5.'    guisp='.ui_5.'    gui=NONE       ctermfg=NONE  ctermbg=102   cterm=NONE'
:exe  'highlight  Identifier      guifg='.cyan.'     guibg=NONE        guisp=NONE        gui=NONE       ctermfg=117   ctermbg=NONE  cterm=NONE'
:exe  'highlight  SpecialChar     guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Conditional     guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=bold       ctermfg=229   ctermbg=NONE  cterm=bold'
:exe  'highlight  StorageClass    guifg='.blue.'     guibg=NONE        guisp=NONE        gui=bold       ctermfg=60    ctermbg=NONE  cterm=bold'
:exe  'highlight  Todo            guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=italic     ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Special         guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  LineNr          guifg='.ui_8.'     guibg=NONE        guisp=NONE        gui=NONE       ctermfg=60    ctermbg=NONE  cterm=NONE'




:exe  'highlight  StatusLine      guifg='.ui_2.'     guibg='nord0'    guisp='.ui_9.'    gui=bold       ctermfg=255   ctermbg=239   cterm=bold'
":exe  'highlight  StatusLine      guifg='.ui_2.'     guibg='.ui_9.'    guisp='.ui_9.'    gui=bold       ctermfg=255   ctermbg=239   cterm=bold'





:exe  'highlight  Label           guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=bold       ctermfg=229   ctermbg=NONE  cterm=bold'
:exe  'highlight  PMenuSel        guifg='.green.'    guibg='.ui_9.'    guisp='.ui_9.'    gui=NONE       ctermfg=84    ctermbg=239   cterm=NONE'
"""" Here guibg stands for the background color for vim search
:exe  'highlight  Search          guifg='.ui_11.'    guibg='nord_white'  guisp='.yellow.'  gui=NONE       ctermfg=237   ctermbg=229   cterm=NONE'
":exe  'highlight  Search          guifg='.ui_11.'    guibg='.yellow.'  guisp='.yellow.'  gui=NONE       ctermfg=237   ctermbg=229   cterm=NONE'
:exe  'highlight  Delimiter       guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'




"" color in python:  'as' import pandas as pd
:exe  'highlight  Statement       guifg='.yellow.'  guibg=NONE        guisp=NONE        gui=bold       ctermfg=205   ctermbg=NONE  cterm=bold'
:exe  'highlight  SpellRare       guifg='.ui_1.'      guibg='.ui_12.'   guisp='.ui_12.'   gui=underline  ctermfg=189   ctermbg=235   cterm=underline'
:exe  'highlight  Comment         guifg='.ui_8.'     guibg=NONE        guisp=NONE        gui=italic     ctermfg=60    ctermbg=NONE  cterm=NONE'
:exe  'highlight  Character       guifg='.ui_3.'     guibg=NONE        guisp=NONE        gui=NONE       ctermfg=254   ctermbg=NONE  cterm=NONE'
:exe  'highlight  TabLineSel      guifg='.ui_2.'     guibg='.ui_11.'   guisp='.ui_11.'   gui=bold       ctermfg=255   ctermbg=237   cterm=bold'



:exe  'highlight  Number          guifg='magenta'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
":exe  'highlight  Number          guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Boolean         guifg='.ui_3.'     guibg=NONE        guisp=NONE        gui=NONE       ctermfg=254   ctermbg=NONE  cterm=NONE'





""" color for 'in' for i in range(9):
:exe  'highlight  Operator        guifg='.yellow.'  guibg=NONE        guisp=NONE        gui=bold       ctermfg=205   ctermbg=NONE  cterm=bold'



:exe  'highlight  CursorLine      guifg=NONE         guibg='super_dark'   guisp='.ui_9.'   gui=NONE       ctermfg=NONE  ctermbg=236   cterm=NONE'
":exe  'highlight  CursorLine      guifg=NONE         guibg='.ui_9.'   guisp='.ui_9.'   gui=NONE       ctermfg=NONE  ctermbg=236   cterm=NONE'



:exe  'highlight  ColorColumn     guifg=NONE         guibg='.ui_9.'   guisp='.ui_9.'   gui=NONE       ctermfg=NONE  ctermbg=236   cterm=NONE'
:exe  'highlight  CursorLineNR    guifg='nord4'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=NONE  ctermbg=236   cterm=NONE'
:exe  'highlight  TabLineFill     guifg='.ui_12.'    guibg='.ui_9.'    guisp='.ui_9.'    gui=bold       ctermfg=235   ctermbg=239   cterm=bold'
:exe  'highlight  WarningMsg      guifg='.red.'      guibg='.ui_11.'   guisp='.ui_11.'   gui=NONE       ctermfg=203   ctermbg=237   cterm=NONE'
:exe  'highlight  VisualNOS       guifg='.ui_12.'    guibg='.ui_1.'     guisp='.ui_1.'     gui=underline  ctermfg=235   ctermbg=189   cterm=underline'
:exe  'highlight  DiffDelete      guifg='.magenta.'  guibg='.ui_9.'    guisp='.ui_9.'    gui=NONE       ctermfg=205   ctermbg=239   cterm=NONE'
:exe  'highlight  ModeMsg         guifg='.ui_0.'     guibg='.ui_12.'   guisp='.ui_12.'   gui=bold       ctermfg=15    ctermbg=235   cterm=bold'
:exe  'highlight  CursorColumn    guifg='.ui_3.'     guibg='.ui_9.'   guisp='.ui_9.'   gui=NONE       ctermfg=254   ctermbg=236   cterm=NONE'
:exe  'highlight  Define          guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'





:exe  'highlight  Function        guifg='.yellow.'     guibg=NONE        guisp=NONE        gui=bold       ctermfg=81    ctermbg=NONE  cterm=bold'
":exe  'highlight  Function        guifg='.blue.'     guibg=NONE        guisp=NONE        gui=bold       ctermfg=81    ctermbg=NONE  cterm=bold'
:exe  'highlight  FoldColumn      guifg='.ui_12.'    guibg='.ui_4.'    guisp='.ui_4.'    gui=italic     ctermfg=235   ctermbg=248   cterm=NONE'
:exe  'highlight  PreProc         guifg='.red.'      guibg=NONE        guisp=NONE        gui=NONE       ctermfg=203   ctermbg=NONE  cterm=NONE'





:exe  'highlight  Visual          guifg='.ui_12.'    guibg='nord8'     guisp='.ui_1.'     gui=NONE       ctermfg=235   ctermbg=189   cterm=NONE'
":exe  'highlight  Visual          guifg='.ui_12.'    guibg='.ui_1.'     guisp='.ui_1.'     gui=NONE       ctermfg=235   ctermbg=189   cterm=NONE'





:exe  'highlight  MoreMsg         guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=bold       ctermfg=229   ctermbg=NONE  cterm=bold'
:exe  'highlight  SpellCap        guifg='.ui_1.'      guibg='.ui_12.'   guisp='.ui_12.'   gui=underline  ctermfg=189   ctermbg=235   cterm=underline'




:exe  'highlight  VertSplit       guifg='nord0'     guibg=NONE   guisp='.ui_11.'   gui=bold       ctermfg=60    ctermbg=237   cterm=bold'
":exe  'highlight  VertSplit       guifg='.ui_8.'     guibg='.ui_11.'   guisp='.ui_11.'   gui=bold       ctermfg=60    ctermbg=237   cterm=bold'



:exe  'highlight  Exception       guifg='.red.'      guibg=NONE        guisp=NONE        gui=bold       ctermfg=203   ctermbg=NONE  cterm=bold'



:exe  'highlight  Keyword         guifg='.magenta.'  guibg=NONE        guisp=NONE        gui=bold       ctermfg=205   ctermbg=NONE  cterm=bold'
:exe  'highlight  Type            guifg='.cyan.'     guibg=NONE        guisp=NONE        gui=bold       ctermfg=117   ctermbg=NONE  cterm=bold'
:exe  'highlight  DiffChange      guifg='.ui_3.'     guibg='.ui_9.'    guisp='.ui_9.'    gui=NONE       ctermfg=254   ctermbg=239   cterm=NONE'
:exe  'highlight  Cursor          guifg='.ui_12.'    guibg='.ui_0.'    guisp='.ui_0.'    gui=NONE       ctermfg=235   ctermbg=15    cterm=NONE'



:exe  'highlight  SpellLocal      guifg='nord11'      guibg='super_dark'   guisp='.ui_12.'   gui=underline  ctermfg=189   ctermbg=235   cterm=underline'
":exe  'highlight  SpellLocal      guifg='.ui_1.'      guibg='.ui_12.'   guisp='.ui_12.'   gui=underline  ctermfg=189   ctermbg=235   cterm=underline'



:exe  'highlight  Error           guifg='.red.'      guibg='.ui_11.'   guisp='.ui_11.'   gui=NONE       ctermfg=203   ctermbg=237   cterm=NONE'
:exe  'highlight  PMenu           guifg='.ui_2.'     guibg='.ui_9.'    guisp='.ui_9.'    gui=NONE       ctermfg=255   ctermbg=239   cterm=NONE'
:exe  'highlight  SpecialKey      guifg='.ui_6.'     guibg=NONE        guisp=NONE        gui=italic     ctermfg=66    ctermbg=NONE  cterm=NONE'


:exe  'highlight  Constant        guifg='.green.'    guibg=NONE        guisp=NONE        gui=NONE       ctermfg=84    ctermbg=NONE  cterm=NONE'
:exe  'highlight  Tag             guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'


"
"
"
"""""'''''''''''
" the color for those under quotation mark, i.e., 'string'
:exe  'highlight  String          guifg='nord14'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
":exe  'highlight  String          guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'




:exe  'highlight  PMenuThumb      guifg=NONE         guibg='.ui_4.'    guisp='.ui_4.'    gui=NONE       ctermfg=NONE  ctermbg=248   cterm=NONE'
:exe  'highlight  MatchParen      guifg='.yellow.'   guibg='.ui_4.'        guisp=NONE        gui=bold       ctermfg=229   ctermbg=NONE  cterm=bold'




" in python: for, while, 
:exe  'highlight  Repeat          guifg='.yellow.'    guibg=NONE        guisp=NONE        gui=bold       ctermfg=84    ctermbg=NONE  cterm=bold'
":exe  'highlight  Repeat          guifg='.green.'    guibg=NONE        guisp=NONE        gui=bold       ctermfg=84    ctermbg=NONE  cterm=bold'


:exe  'highlight  SpellBad        guifg='nord11'      guibg='super_dark'   guisp='.ui_12.'   gui=underline  ctermfg=189   ctermbg=235   cterm=underline'
":exe  'highlight  SpellBad        guifg='.ui_1.'      guibg='.ui_12.'   guisp='.ui_12.'   gui=underline  ctermfg=189   ctermbg=235   cterm=underline'



:exe  'highlight  CTagsClass      guifg='.ui_3.'     guibg=NONE        guisp=NONE        gui=NONE       ctermfg=254   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Directory       guifg='.ui_8.'     guibg=NONE        guisp=NONE        gui=bold       ctermfg=60    ctermbg=NONE  cterm=bold'
:exe  'highlight  Structure       guifg='.ui_7.'     guibg=NONE        guisp=NONE        gui=bold       ctermfg=60    ctermbg=NONE  cterm=bold'
:exe  'highlight  Macro           guifg='.yellow.'   guibg=NONE        guisp=NONE        gui=NONE       ctermfg=229   ctermbg=NONE  cterm=NONE'
:exe  'highlight  Underlined      guifg='.ui_1.'      guibg='.ui_12.'   guisp='.ui_12.'   gui=underline  ctermfg=189   ctermbg=235   cterm=underline'
:exe  'highlight  DiffAdd         guifg='.green.'    guibg='.ui_9.'    guisp='.ui_9.'    gui=NONE       ctermfg=84    ctermbg=239   cterm=NONE'
:exe  'highlight  TabLine         guifg='.ui_2.'     guibg='.ui_9.'    guisp='.ui_9.'    gui=bold       ctermfg=255   ctermbg=239   cterm=bold'
:exe  'highlight  cursorim        guifg='.ui_12.'    guibg='.ui_7.'    guisp='.ui_7.'    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'

" Sign Column
:exe  'highlight  SignColumn          guibg='.ui_11.''
:exe  'highlight  DiffAdd             guifg='.green.'       guibg='.ui_11.''
:exe  'highlight  DiffDelete          guifg='.red.'         guibg='.ui_11.''
:exe  'highlight  DiffChange          guifg='.yellow.'      guibg='.ui_11.''
:exe  'highlight  SignifyLineDelete   guibg='.ui_11.''
:exe  'highlight  SignifyLineChange   guibg='.ui_11.''

" GitGutter
:exe  'highlight  GitGutterAdd        guifg='.green.'    guibg=NONE    guisp=NONE        gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  GitGutterChange        guifg='.yellow.'    guibg=NONE    guisp=NONE        gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  GitGutterDelete        guifg='.red.'    guibg=NONE    guisp=NONE        gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  GitGutterChangeDelete        guifg='.red.'    guibg=NONE    guisp=NONE        gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'

" NERDTree
:exe  'highlight  Directory        guifg='.cyan.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'

" Markdown
:exe  'highlight  markdownLinkText        guifg='.cyan.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'

" PHP
:exe  'highlight  phpStructure        guifg='.cyan.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'

" JavaScript
:exe  'highlight  javaScriptBoolean        guifg='.cyan.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'

" CSS
:exe  'highlight  cssProp        guifg='.ui_0.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssAttrComma        guifg='.ui_0.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssClassName        guifg='.cyan.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssClassNameDot        guifg='.cyan.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssColor        guifg='.yellow.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssAttr        guifg='.magenta.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssIncludeKeyword        guifg='.green.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssIdentifier        guifg='.red.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'
:exe  'highlight  cssImportant        guifg='.red.'    guibg=NONE    guisp=NONE    gui=NONE       ctermfg=235   ctermbg=60    cterm=NONE'

" Transparent Background
if g:mycolorTransparent == 1
    highlight  Normal              guibg=NONE   ctermbg=NONE
    highlight  SignColumn          guibg=NONE   ctermbg=NONE
    highlight  DiffAdd             guibg=NONE   ctermbg=NONE
    highlight  DiffDelete          guibg=NONE   ctermbg=NONE
    highlight  DiffChange          guibg=NONE   ctermbg=NONE
    highlight  SignifyLineDelete   guibg=NONE   ctermbg=NONE
    highlight  SignifyLineChange   guibg=NONE   ctermbg=NONE
endif
