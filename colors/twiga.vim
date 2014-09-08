let colors_name = expand('twiga')
set background=dark
highlight clear

fun! X(group, fg, bg, attr)
  exec "hi " . a:group . " ctermfg=" . a:fg . " ctermbg=" . a:bg . " cterm=" . a:attr
endfun

let s:normal = 255
let s:comment = 243
let s:listfg = 238
let s:listbg = 232
let s:linefg = 242
let s:linebg = 233

let s:string = 107
let s:number = 167
let s:boolean = 120

let s:valiable = 222 " '$' and valiable
let s:operator = 141 " 'function', 'class', '->', etc.
let s:statement = 110 " if, switch, for, etc.
let s:function = 147 " function name
let s:type = 220 " public, array, html attributes, etc.
let s:delimiter = 225 " (, {, [, etc.

call X("Normal", s:normal, "none", "none")
call X("Comment", s:comment, "none", "none")
call X("Nontext", s:listfg, s:listbg, "none")
call X("SpecialKey", s:listfg, s:listbg, "none")
call X("LineNr", s:linefg, s:linebg, "none")
call X("VertSplit", s:listfg, "none", "none")

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
