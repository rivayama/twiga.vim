let colors_name = "twiga"
set background=dark
highlight clear

function! X(group, fg, bg, attr)
  exec "hi " . a:group . " ctermfg=" . a:fg . " ctermbg=" . a:bg . " cterm=" . a:attr
endfunction

let s:normal = 255
let s:comment = 243
let s:listfg = 238
let s:listbg = 232

" For line, folded, pmenu, and tab
let s:darkfg = 246
let s:darkbg = 234
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
let s:boolean = 119

let s:valiable = 181 " valiable name
let s:operator = 140 " 'function', 'class', '$', '->', etc.
let s:statement = 110 " if, switch, for, etc.
let s:function = 146 " function name
let s:type = 215 " public, array, html attributes, etc.
let s:delimiter = 223 " (, {, [, etc.

let s:errorfg = 253
let s:errorbg = 124
let s:todofg = 234
let s:todobg = 184

call X("Normal", s:normal, "none", "none")
call X("Comment", s:comment, "none", "none")
call X("Nontext", s:listfg, s:listbg, "none")
call X("SpecialKey", s:listfg, s:listbg, "none")
call X("LineNr", s:darkfg, s:darkbg, "none")
call X("VertSplit", s:listfg, "none", "none")

call X("Folded", s:darkfg, s:darkbg, "none")
call X("Pmenu", s:darkfg, s:darkbg, "none")
call X("PmenuSel", s:activefg, s:activebg, "none")

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
call X("Boolean", s:boolean, "none", "none")
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

call X("Error", s:errorfg, s:errorbg, "none")
call X("Todo", s:todofg, s:todobg, "none")

function! TabLabel(n)
  let bufnrs = tabpagebuflist(a:n)
  let mod = len(filter(copy(bufnrs), 'getbufvar(v:val, "&modified")')) ? '(+)' : ''
  let fname = pathshorten(bufname(bufnrs[tabpagewinnr(a:n) - 1])) 
  return ' ' . fname . mod . ' '
endfunction

function! TabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    let s .= i + 1 == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#'
    let s .= TabLabel(i+1)
  endfor
  let s .= '%#TabLineFill#%T'
  return s
endfunction

" set showtabline=2
set tabline=%!TabLine()

call X("TabLine", s:darkfg, s:darkbg, "none")
call X("TabLineFill", s:darkfg, s:darkbg, "none")
call X("TabLineSel", s:activefg, s:activebg, "none")

" {{{ PHP

" hi! link phpFunctions Function
" hi! link phpSuperglobal Identifier
" hi! link phpQuoteSingle StringDelimiter
" hi! link phpQuoteDouble StringDelimiter
" hi! link phpBoolean Constant
" hi! link phpNull Constant
" hi! link phpArrayPair Operator
" hi! link phpOperator Normal
" hi! link phpRelation Normal
" hi! link phpVarSelector Identifier

" }}}
