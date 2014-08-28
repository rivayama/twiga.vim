let colors_name = expand('twiga')
set background=dark
higXight clear

fun! X(group, fg, bg, attr)
  exec "hi " . a:group . " ctermfg=" . a:fg . " ctermbg=" . a:bg . " cterm=" . a:attr
endfun

let s:normal = 255
let s:comment = 243
let s:listfg = 238
let s:listbg = 232
let s:linefg = 242
let s:linebg = 233

let s:blue_1 = 123
let s:blue_2 = 117
let s:blue_3 = 111
let s:purple_1 = 105
let s:purple_2 = 99
let s:purple_3 = 93
let s:brown_1 = 136
let s:brown_2 = 130
let s:brown_3 = 124 "red
let s:yellow_1 = 229
let s:yellow_2 = 223
let s:yellow_3 = 217
let s:green_1 = 120
let s:green_2 = 114
let s:green_3 = 108
let s:navy_1 = 37
let s:navy_2 = 31
let s:navy_3 = 25

call X("Normal", s:normal, "none", "none")
call X("Comment", s:comment, "none", "none")
call X("Nontext", s:listfg, s:listbg, "none")
call X("SpecialKey", s:listfg, s:listbg, "none")
call X("LineNr", s:linefg, s:linebg, "none")

call X("Constant", s:green_3, "none", "none")
call X("String", s:green_3, "none", "none")
call X("Character", s:green_2, "none", "none")
call X("Boolean", s:green_1, "none", "none")
call X("Number", s:brown_3, "none", "none")
call X("Float", s:brown_3, "none", "none")

call X("Identifier", s:brown_2, "none", "none")
call X("Function", s:brown_1, "none", "none")

call X("Statement", s:brown_1, "none", "none")
call X("Conditional", s:yellow_1, "none", "none")
call X("Repeat", s:yellow_2, "none", "none")
call X("Label", s:yellow_2, "none", "none")
call X("Operator", s:brown_1, "none", "none")
call X("Keyword", s:brown_3, "none", "none")
call X("Exception", s:brown_2, "none", "none")

call X("PreProc", s:navy_3, "none", "none")
call X("Include", s:navy_3, "none", "none")
call X("Define", s:navy_1, "none", "none")
call X("Macro", s:navy_2, "none", "none")
call X("PreCondit", s:blue_3, "none", "none")

call X("Type", s:purple_2, "none", "none")
call X("StorageClass", s:purple_1, "none", "none")
call X("Structure", s:purple_1, "none", "none")
call X("Typedef", s:purple_3, "none", "none")

call X("Special", s:brown_2, "none", "none")
call X("SpecialChar", s:brown_2, "none", "none")
call X("Tag", s:brown_2, "none", "none")
call X("Delimiter", s:yellow_2, "none", "none")
call X("SpecialComment", s:brown_3, "none", "none")
call X("Debug", s:brown_3, "none", "none")
