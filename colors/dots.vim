"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Info"{{{
" *****************************************************************************
" Standard colors
" Note, x:x:x are RGB values
"
"  normal: #f6f3e8
"
"  string: #a8ff60  168:255:96
"    string inner (punc, code, etc): #00a0a0  0:160:160
"  number: #ff73fd  255:115:253
"  comments: #7c7c7c  124:124:124
"  keywords: #96cbfe  150:203:254
"  operators: white
"  class: #ffffb6  255:255:182
"  method declaration name: #ffd2a7  255:210:167
"  regular expression: #e9c062  233:192:98
"    regexp alternate: #ff8000  255:128:0
"    regexp alternate 2: #b18a3d  177:138:61
"  variable: #c6c5fe  198:197:254
"
" Misc colors:
"  red color (used for whatever): #ff6c60   255:108:96
"     light red: #ffb6b0   255:182:176
"
"  brown: #e18964  good for special
"
"  lightpurpleish: #ffccff
"
" Interface colors:
"  background color: black
"  cursor (where underscore is used): #ffa560  255:165:96
"  cursor (where block is used): white
"  visual selection: #1d1e2c
"  current line: #151515  21:21:21
"  search selection: #07281c  7:40:28
"  line number: #3d3d3d  61:61:61


" *****************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4e4e4e     #7c7c7c
" Red       #ff6c60     #ffb6b0
" Green     #a8ff60     #ceffab
" Yellow    #ffffb6     #ffffcb
" Blue      #96cbfe     #ffffcb
" Magenta   #ff73fd     #ff9cfe
" Cyan      #c6c5fe     #dfdffe
" White     #eeeeee     #ffffff


" *****************************************************************************
"}}}

" Lollipops info"{{{
hi clear
if version > 580
  if exists("syntax_on")
    syntax reset
  endif
endif

let colors_name="dots"

if has("gui_running")
  set background=dark
endif
hi SignColumn guibg=NONE ctermbg=NONE

hi Normal guifg=#c6c6c6 guibg=#000000 gui=NONE ctermfg=251 ctermbg=0 cterm=NONE
hi NonText guifg=#ff00ff guibg=#000000 gui=NONE ctermfg=13 ctermbg=0 cterm=NONE

hi Cursor guifg=#000000 guibg=#ffff00 gui=NONE ctermfg=0 ctermbg=11 cterm=reverse
hi LineNr guifg=#3a3a3a guibg=#000000 gui=NONE ctermfg=223 ctermbg=0 cterm=NONE

hi VertSplit guifg=#303030 guibg=#303030 gui=NONE ctermfg=236 ctermbg=236 cterm=NONE
hi StatusLine guifg=#9cffd3 guibg=#202020 gui=NONE ctermfg=85 ctermbg=234 cterm=NONE
hi StatusLineNC guifg=#000000 guibg=#202020 gui=bold ctermfg=0 ctermbg=234 cterm=BOLD

hi FoldColumn guifg=#a8a8a8 guibg=#444444 gui=NONE ctermfg=248 ctermbg=238 cterm=NONE
hi Folded guifg=#a8a8a8 guibg=#444444 gui=NONE ctermfg=248 ctermbg=238 cterm=NONE

hi Title guifg=#5f87d7 guibg=NONE gui=BOLD,ITALIC ctermfg=67 ctermbg=NONE cterm=BOLD
hi Visual guifg=NONE guibg=#262d51 gui=NONE ctermfg=NONE ctermbg=54 cterm=NONE

hi SpecialKey guifg=#4e4e4e guibg=#000000 gui=NONE ctermfg=239 ctermbg=0 term=NONE

hi WildMenu guifg=#008700 guibg=#ffff00 gui=NONE ctermfg=255 ctermbg=11 cterm=NONE
hi PmenuSbar guifg=#000000 guibg=#ffffff gui=NONE ctermfg=0 ctermbg=15 cterm=NONE

hi Error guifg=NONE guibg=NONE gui=UNDERCURL guisp=#ff6c60 ctermfg=15 ctermbg=88 cterm=NONE
hi ErrorMsg guifg=#ffffff guibg=#870000 gui=BOLD ctermfg=15 ctermbg=88 cterm=BOLD
hi WarningMsg guifg=#ffffff guibg=#ff5f5f gui=BOLD ctermfg=15 ctermbg=203 cterm=BOLD

hi Directory guifg=#ffff87 guibg=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi LocalVariable guifg=#875f87 guibg=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
hi Question guifg=#87afff guibg=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg guifg=#000000 guibg=#8787ff gui=BOLD ctermfg=0 ctermbg=105 cterm=BOLD
"}}}

" Vim 7.x specific colors"{{{
if version >= 700
  hi CursorLine guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
  hi CursorLineNr term=bold cterm=NONE ctermfg=NONE
  hi CursorColumn guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=BOLD
  hi MatchParen guifg=#afff00 guibg=#af00ff gui=BOLD ctermfg=154 ctermbg=129 cterm=BOLD
  hi Pmenu guifg=#e5e5e5 guibg=#444444 gui=NONE ctermfg=7 ctermbg=238 cterm=NONE
  hi PmenuSel guifg=#000000 guibg=#d7d787 gui=NONE ctermfg=0 ctermbg=186 cterm=NONE
  hi Search guifg=#d787d7 guibg=#5f005f gui=UNDERLINE ctermfg=176 ctermbg=53 cterm=UNDERLINE
endif

hi IncSearch guifg=#1c1c1c guibg=#00d7ff gui=NONE ctermfg=234 ctermbg=45 cterm=NONE
"}}}

" Syntax highlighting"{{{
hi Comment guifg=#585858 guibg=NONE gui=ITALIC ctermfg=240 ctermbg=NONE cterm=NONE
hi String guifg=#afaf5f guibg=NONE gui=NONE ctermfg=143 ctermbg=NONE cterm=NONE
hi Number guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE

hi Keyword guifg=#ffaf00 guibg=NONE gui=ITALIC ctermfg=214 ctermbg=NONE cterm=BOLD
hi PreProc guifg=#00afd7 guibg=NONE gui=BOLD ctermfg=38 ctermbg=NONE cterm=BOLD
hi Conditional guifg=#ffd75f guibg=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE

hi Todo guifg=#87005f guibg=#ffff5f gui=BOLD,UNDERLINE ctermfg=89 ctermbg=NONE cterm=BOLD
hi Constant guifg=#d75f5f guibg=NONE gui=BOLD,ITALIC ctermfg=167 ctermbg=NONE cterm=BOLD

hi Identifier guifg=#8787d7 guibg=NONE gui=NONE ctermfg=104 ctermbg=NONE cterm=NONE
hi Function guifg=#d78787 guibg=NONE gui=BOLD ctermfg=174 ctermbg=NONE cterm=BOLD
hi Type guifg=#d78700 guibg=NONE gui=BOLD,ITALIC ctermfg=172 ctermbg=NONE cterm=BOLD
hi Statement guifg=#87af5f guibg=NONE gui=ITALIC ctermfg=107 ctermbg=NONE cterm=NONE

hi Special guifg=#5faf00 guibg=NONE gui=NONE ctermfg=70 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#5fafd7 guibg=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi Operator guifg=#87d7d7 guibg=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE

hi Character guifg=#ff875f guibg=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi Boolean guifg=#5fafd7 guibg=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi Repeat guifg=#ffaf87 guibg=NONE gui=NONE ctermfg=216 ctermbg=NONE cterm=NONE
hi Exception guifg=#d75f87 guibg=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi Include guifg=#00afaf guibg=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#c59f6f guibg=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi Tag guifg=#5fdf87 guibg=NONE gui=NONE ctermfg=78 ctermbg=NONE cterm=NONE
hi Ignore guifg=#bcbcbc guibg=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE
hi Noise guifg=#5f87d7 guibg=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE

hi link Float Number
hi link Label Repeat
hi link Typedef Repeat
hi link Define Include
hi link Macro Include
hi link PreCondit Include
hi link Structure Include
hi link SpecialChar Tag
hi link SpecialComment Tag
hi link Debug Tag
hi link MoreMsg Ignore
hi link DefinedName Ignore
hi link EnumerationName Ignore
hi link EnumerationValue Ignore
hi link Union Ignore
hi link VisualNOS Ignore
"}}}

" VimDiff colors"{{{
hi DiffAdd guifg=#bcbcbc guibg=#005f00 gui=NONE ctermfg=250 ctermbg=22 cterm=NONE
hi DiffDelete guifg=#d7afff guibg=#870000 gui=NONE ctermfg=250 ctermbg=88 cterm=NONE
hi DiffChange guifg=#bcbcbc guibg=#875fd7 gui=NONE ctermfg=250 ctermbg=126 cterm=NONE
hi DiffText guifg=#080808 guibg=#ff5fff gui=BOLD ctermfg=250 ctermbg=20 cterm=BOLD
"}}}

" Spelling"{{{
hi SpellBad guisp=#d70000 ctermfg=bg ctermbg=160 gui=undercurl cterm=REVERSE
hi SpellCap guisp=#00afd7 ctermfg=bg ctermbg=38 gui=undercurl cterm=REVERSE
hi SpellRare guisp=#5faf00 ctermfg=bg ctermbg=70 gui=undercurl cterm=REVERSE
hi SpellLocal guisp=#d7af00 ctermfg=bg ctermbg=178 gui=undercurl cterm=REVERSE
"}}}

" Ctags"{{{
hi link CTagsClass htmlString
hi link CTagsGlobalConstant htmlString
hi link CTagsGlobalVariable htmlString
hi link CTagsImport htmlString
hi link CTagsMember htmlString
"}}}

" Filetype specifics"{{{
  " Special for Ruby"{{{
  hi rubyRegexp guifg=#af875f guibg=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
  hi rubyRegexpDelimiter guifg=#ff8700 guibg=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
  hi rubyEscape guifg=#ffffff guibg=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
  hi rubyInterpolationDelimiter guifg=#00afaf guibg=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
  hi rubyControl guifg=#5f87d7 guibg=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
  "hi rubyGlobalVariable guifg=#FFCCFF guibg=NONE gui=NONE ctermfg=225 ctermbg=NONE cterm=NONE
  hi rubyStringDelimiter guifg=#5f875f guibg=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
  "rubyInclude
  "rubySharpBang
  "rubyAccess
  "rubyPredefinedVariable
  "rubyBoolean
  "rubyClassVariable
  "rubyBeginEnd
  "rubyRepeatModifier
  "hi link rubyArrayDelimiter Special " [ , , ]
  "rubyCurlyBlock { , , }
  hi link rubyClass Keyword
  hi link rubyModule Keyword
  hi link rubyKeyword Keyword
  hi link rubyOperator Operator
  hi link rubyIdentifier Identifier
  hi link rubyInstanceVariable Identifier
  hi link rubyGlobalVariable Identifier
  hi link rubyClassVariable Identifier
  hi link rubyConstant Type
  "}}}

  " Special for HTML"{{{
  hi htmlH1 guifg=#00afd7 guibg=NONE gui=UNDERLINE ctermfg=38 ctermbg=NONE cterm=BOLD
  hi htmlLink guifg=#d7d75f guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
  hi htmlString guifg=#87875f guibg=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
  hi htmlTagName guifg=#d7afd7 guibg=NONE gui=NONE ctermfg=182 ctermbg=NONE cterm=NONE
  hi link htmlTag Keyword
  hi link htmlEndTag Identifier
  hi link htmlH2 htmlH1
  hi link htmlH3 htmlH1
  hi link htmlH4 htmlH1
  "}}}

  " Special for XML"{{{
  hi link xmlTag Keyword
  hi link xmlTagName htmlTagName
  hi link xmlEndTag Identifier
  "}}}

  " Special for CSS"{{{
  hi cssTagName guifg=#70a8dd gui=BOLD ctermfg=74 cterm=BOLD
  hi cssBoxProp guifg=#d0af76 gui=NONE ctermfg=180 gui=NONE
  hi link cssColorProp cssBoxProp
  hi link cssFontProp cssBoxProp
  hi link cssTextProp cssBoxProp
  hi cssPseudoClassId guifg=#9ccfdd gui=italic ctermfg=152 cterm=NONE
  hi cssIdentifier guifg=#3fc493 gui=italic ctermfg=115 cterm=NONE
  "}}

  " Special for Markdown"{{{
  hi markdownUrl guifg=#af8787 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
  hi markdownCode guibg=#3a3a3a guifg=#a7bee4 gui=BOLD ctermbg=237 ctermfg=152 cterm=BOLD
  hi markdownCodeBlock guifg=#c5b1e4 ctermfg=182
  hi markdownLinkText guifg=#0087af gui=UNDERLINE ctermfg=31

  hi markdownH1 guifg=#d75f00 guibg=NONE gui=BOLD,ITALIC,UNDERLINE ctermfg=166 ctermbg=NONE cterm=BOLD
  hi markdownH2 guifg=#d75f87 guibg=NONE gui=BOLD,UNDERLINE ctermfg=168 ctermbg=NONE cterm=BOLD
  hi markdownH3 guifg=#d78787 guibg=NONE gui=ITALIC,UNDERLINE ctermfg=174 ctermbg=NONE cterm=BOLD

  hi markdownBold guifg=#ffd75f guibg=NONE gui=BOLD ctermfg=221 ctermbg=NONE cterm=BOLD
  hi markdownItalic guifg=#afff87 guibg=NONE gui=ITALIC ctermfg=156 ctermbg=NONE cterm=NONE

  hi markdownOrderedListMarker guifg=#5fff00 gui=BOLD ctermfg=82 cterm=BOLD
  hi markdownListMarker guifg=#ffff00 gui=BOLD ctermfg=226 cterm=BOLD

  hi markdownBlockQuote guifg=#00ffff gui=BOLD ctermfg=14 cterm=BOLD
  "}}}

  " Special for JavaScript"{{{
  hi jsFuncCall guifg=#d75f87 guibg=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
  hi jsFuncName guifg=#d75f87 guibg=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
  hi jsFunction guifg=#d78787 guibg=NONE gui=NONE ctermfg=174 ctermbg=NONE cterm=NONE

  hi jsStringS guifg=#26b3ac guibg=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
  hi jsStringD guifg=#d7d75f guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
  hi link jsOperator PreProc
  hi link jsNumber Number
  hi link jsStorageClass Identifier

  hi jsPrototype guifg=#d78787 guibg=NONE gui=NONE ctermfg=174 ctermbg=NONE cterm=NONE
  hi jsThis guifg=#d7afff guibg=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
  hi jsNoise guifg=#d75f87 guibg=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE

  " Special for Python"{{{
  "hi link pythonEscape Keyword
  hi pythonBuiltin guifg=#50bf95 guibg=NONE gui=ITALIC ctermfg=42 cterm=BOLD
  "}}}

  " Special for PHP"{{{
  hi phpDefine guifg=#ffc795 gui=BOLD ctermfg=209 cterm=BOLD
  hi phpStringSingle guifg=#e8e8d3 guibg=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE
  hi link phpStringDouble Ignore
  "}}}

  " Special for Java"{{{
  " hi link javaClassDecl Type
  hi link javaScopeDecl Identifier
  hi link javaCommentTitle javaDocSeeTag
  hi link javaDocTags javaDocSeeTag
  hi link javaDocParam javaDocSeeTag
  hi link javaDocSeeTagParam javaDocSeeTag

  hi javaDocSeeTag guifg=#CCCCCC guibg=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
  "hi javaClassDecl guifg=#CCFFCC guibg=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
  "}}}
"}}}
