let colors_name = expand('twiga')
set background=dark
highlight clear

fun! Hl(group, fg, bg, attr)
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

call Hl("Normal", s:normal, "none", "none")
call Hl("Comment", s:comment, "none", "none")
call Hl("Nontext", s:listfg, s:listbg, "none")
call Hl("SpecialKey", s:listfg, s:listbg, "none")
call Hl("LineNr", s:linefg, s:linebg, "none")

call Hl("Constant", s:green_3, "none", "none")
call Hl("String", s:green_3, "none", "none")
call Hl("Character", s:green_2, "none", "none")
call Hl("Boolean", s:green_1, "none", "none")
call Hl("Number", s:brown_3, "none", "none")
call Hl("Float", s:brown_3, "none", "none")

call Hl("Identifier", s:brown_2, "none", "none")
call Hl("Function", s:brown_1, "none", "none")

call Hl("Statement", s:brown_1, "none", "none")
call Hl("Conditional", s:yellow_1, "none", "none")
call Hl("Repeat", s:yellow_2, "none", "none")
call Hl("Label", s:yellow_2, "none", "none")
call Hl("Operator", s:brown_1, "none", "none")
call Hl("Keyword", s:brown_3, "none", "none")
call Hl("Exception", s:brown_2, "none", "none")

call Hl("PreProc", s:navy_3, "none", "none")
call Hl("Include", s:navy_3, "none", "none")
call Hl("Define", s:navy_1, "none", "none")
call Hl("Macro", s:navy_2, "none", "none")
call Hl("PreCondit", s:blue_3, "none", "none")

call Hl("Type", s:purple_2, "none", "none")
call Hl("StorageClass", s:purple_1, "none", "none")
call Hl("Structure", s:purple_1, "none", "none")
call Hl("Typedef", s:purple_3, "none", "none")

call Hl("Special", s:brown_2, "none", "none")
call Hl("SpecialChar", s:brown_2, "none", "none")
call Hl("Tag", s:brown_2, "none", "none")
call Hl("Delimiter", s:yellow_2, "none", "none")
call Hl("SpecialComment", s:brown_3, "none", "none")
call Hl("Debug", s:brown_3, "none", "none")
