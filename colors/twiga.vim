"  (\-/)     _________    ___       __     ___    ________    ________     
" (:O O:)   |\___   ___\ |\  \     |\  \  |\  \  |\   ____\  |\   __  \    
"  \   /o\  \|___ \  \_| \ \  \    \ \  \ \ \  \ \ \  \___|  \ \  \|\  \   
"   | |\o \      \ \  \   \ \  \  __\ \  \ \ \  \ \ \  \  ___ \ \   __  \  
"   (:) \ o\      \ \  \   \ \  \|\__\_\  \ \ \  \ \ \  \|\  \ \ \  \ \  \ 
"        \o \--_   \ \__\   \ \____________\ \ \__\ \ \_______\ \ \__\ \__\
"        ( o O      \|__|    \|____________|  \|__|  \|_______|  \|__|\|__|

let colors_name = "twiga"
set background=dark
highlight clear

function! X(group, fg, bg, attr)
  exec "hi ".a:group." ctermfg=".a:fg." ctermbg=".a:bg." cterm=".a:attr
endfunction

let s:normal = 255
let s:comment = 243
let s:listfg = 238
let s:listbg = 232

" For line, folded, pmenu, and tab
let s:darkfg = 246
let s:darkbg = 234
let s:lightfg = 250
let s:lightbg = 238
let s:activefg = 255
let s:activebg = 130

let s:searchfg = 124
let s:matchparenbg = 240

let s:diffaddfg = 193
let s:diffaddbg = 22
let s:diffdelfg = 223
let s:diffdelbg = 88
let s:diffchfg = 159
let s:diffchbg = 33
let s:difftextfg = 19
let s:difftextbg = 123

let s:string = 107
let s:number = 167

let s:valiable = 181 " valiable name
let s:operator = 140 " 'function', 'class', '$', '->', etc.
let s:statement = 110 " if, switch, for, etc.
let s:function = 146 " function name
let s:type = 215 " public, array, html attributes, etc.
let s:delimiter = 223 " (, {, [, etc.

let s:error = 160
let s:todo = 184

call X("Normal", s:normal, "none", "none")
call X("Comment", s:comment, "none", "none")
call X("Nontext", s:listfg, s:listbg, "none")
call X("SpecialKey", s:listfg, s:listbg, "none")
call X("LineNr", s:darkfg, s:darkbg, "none")
call X("VertSplit", s:listfg, "none", "none")

call X("Folded", s:darkfg, s:darkbg, "none")
call X("Pmenu", s:darkfg, s:darkbg, "none")
call X("PmenuSel", s:activefg, s:activebg, "none")

call X("TabLine", s:lightfg, s:lightbg, "none")
call X("TabLineFill", "none", s:lightbg, "none")
call X("TabLineSel", s:activefg, s:activebg, "none")

call X("Search", s:searchfg, "none", "underline")
call X("MatchParen", "none", s:matchparenbg, "none")

call X("DiffAdd", s:diffaddfg, s:diffaddbg, "none")
call X("DiffDelete", s:diffdelfg, s:diffdelbg, "none")
call X("DiffChange", s:diffchfg, s:diffchbg, "none")
call X("DiffText", s:difftextfg, s:difftextbg, "none")

call X("Constant", s:string, "none", "none")
call X("String", s:string, "none", "none")
call X("Character", s:string, "none", "none")
call X("Number", s:number, "none", "none")
call X("Boolean", s:type, "none", "none")
call X("Float", s:number, "none", "none")

call X("Identifier", s:valiable, "none", "none")
call X("Function", s:function, "none", "none")

call X("Statement", s:statement, "none", "none")
call X("Conditional", s:statement, "none", "none")
call X("Repeat", s:statement, "none", "none")
call X("Label", s:statement, "none", "none")
call X("Operator", s:operator, "none", "none")
call X("Keyword", s:statement, "none", "none")
call X("Exception", s:statement, "none", "none")

call X("PreProc", s:operator, "none", "none")
call X("Include", s:operator, "none", "none")
call X("Define", s:operator, "none", "none")
call X("Macro", s:operator, "none", "none")
call X("PreCondit", s:operator, "none", "none")

call X("Type", s:type, "none", "none")
call X("StorageClass", s:type, "none", "none")
call X("Structure", s:operator, "none", "none")
call X("Typedef", s:type, "none", "none")

call X("Special", s:string, "none", "none")
call X("SpecialChar", s:string, "none", "none")
call X("Tag", s:string, "none", "none")
call X("Delimiter", s:delimiter, "none", "none")
call X("SpecialComment", s:string, "none", "none")
call X("Debug", s:string, "none", "none")

call X("Error", s:error, s:darkbg, "none")
call X("Todo", s:todo, s:darkbg, "none")

hi! link phpVarSelector Identifier
hi! link htmlItalic Normal
hi! link htmlBoldItalic htmlBold
hi! link htmlUnderlineItalic htmlUnderline
hi! link htmlBoldUnderlineItalic htmlBoldUnderline

" For lightline.vim
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left    = [ ['darkestgreen', 'brightgreen', 'bold'], ['white', 'gray4'] ]
let s:p.normal.right   = [ ['gray5', 'gray10'], ['gray9', 'gray4'], ['gray8', 'gray2'] ]
let s:p.normal.middle  = [ ['gray7', 'gray2'] ]
let s:p.normal.error   = [ ['gray9', 'brightestred'] ]
let s:p.normal.warning = [ ['gray1', 'yellow'] ]
let s:p.insert.left    = [ ['darkestcyan', 'white', 'bold'], ['white', 'darkblue'] ]
let s:p.insert.right   = [ ['darkestcyan', 'mediumcyan'], ['mediumcyan', 'darkblue'], ['mediumcyan', 'darkestblue'] ]
let s:p.insert.middle  = [ ['mediumcyan', 'darkestblue'] ]
let s:p.replace.left   = [ ['white', 'brightred', 'bold'], ['white', 'gray4'] ]
let s:p.replace.right  = s:p.normal.right
let s:p.replace.middle = s:p.normal.middle
let s:p.inactive.right = [ ['gray1', 'gray5'], ['gray4', 'gray1'], ['gray4', 'gray0'] ]
let s:p.inactive.left  = s:p.inactive.right[1:]
let s:p.visual.left    = [ ['darkred', 'brightorange', 'bold'], ['white', 'gray4'] ]

let s:p.tabline.middle = [ [s:lightfg, s:lightbg] ]
let s:p.tabline.left   = [ [s:lightfg, s:lightbg] ]
let s:p.tabline.tabsel = [ [s:activefg, s:activebg] ]
let s:p.tabline.right  = [ [s:lightfg, s:lightbg] ]

let g:lightline#colorscheme#twiga#palette = lightline#colorscheme#fill(s:p)
