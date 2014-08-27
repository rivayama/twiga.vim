let colors_name = expand('twiga')
set background=dark
highlight clear

fun! Hl(group, fg, bg, attr)
  exec "hi " . a:group . " ctermfg=" . a:fg . " ctermbg=" . a:bg . " cterm=" . a:attr
endfun

let s:white = 255
let s:gray = 243
let s:pink = 225
let s:darkgray = 238
let s:black = 232
let s:grape = 60

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

call Hl("Normal", s:white, "none", "none")
call Hl("Comment", s:gray, "none", "none")
call Hl("Nontext", s:darkgray, s:black, "none")
call Hl("SpecialKey", s:darkgray, s:black, "none")
call Hl("LineNr", s:grape, "none", "none")

call Hl("Constant", s:green_3, "none", "none")
call Hl("String", s:green_3, "none", "none")
call Hl("Character", s:green_2, "none", "none")
call Hl("Boolean", s:green_1, "none", "none")
call Hl("Number", s:brown_2, "none", "none")
call Hl("Float", s:brown_3, "none", "none")

call Hl("Identifier", s:brown_2, "none", "none")
call Hl("Function", s:brown_1, "none", "none")

call Hl("Statement", s:yellow_1, "none", "none")
call Hl("Conditional", s:yellow_1, "none", "none")
call Hl("Repeat", s:yellow_2, "none", "none")
call Hl("Label", s:yellow_2, "none", "none")
call Hl("Operator", s:yellow_3, "none", "none")
call Hl("Keyword", s:brown_3, "none", "none")
call Hl("Exception", s:brown_2, "none", "none")

call Hl("PreProc", s:navy_1, "none", "none")
call Hl("Include", s:navy_1, "none", "none")
call Hl("Define", s:navy_2, "none", "none")
call Hl("Macro", s:navy_3, "none", "none")
call Hl("PreCondit", s:blue_3, "none", "none")

call Hl("Type", s:purple_1, "none", "none")
call Hl("StorageClass", s:purple_2, "none", "none")
call Hl("Structure", s:purple_3, "none", "none")
call Hl("Typedef", s:purple_1, "none", "none")

call Hl("Special", s:brown_2, "none", "none")
call Hl("SpecialChar", s:brown_2, "none", "none")
call Hl("Tag", s:brown_2, "none", "none")
call Hl("Delimiter", s:brown_1, "none", "none")
call Hl("SpecialComment", s:brown_3, "none", "none")
call Hl("Debug", s:brown_3, "none", "none")
