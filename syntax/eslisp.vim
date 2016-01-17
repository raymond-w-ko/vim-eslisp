if exists("b:current_syntax")
  finish
endif

syn match eslispOperator "_++\|_--\|--_\|++_\|[+\-*/%<>=&|!~]\|==\|===\|!=\|!==\|<=\|>="
syn keyword eslispKeyword array object regex var . get switch if ?: while do while for forin break continue label lambda function return new debugger throw try catch finally seq block macro capmacro quote quasiquote unquote unquote-splicing

hi def link eslispOperator Function
hi def link eslispKeyword Keyword
  
let b:current_syntax = "eslisp"
