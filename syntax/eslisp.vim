if exists("b:current_syntax")
  finish
endif

syntax match eslispOperator "_++\|_--\|--_\|++_\|[+\-*/%<>=&|!~]\|==\|===\|!=\|!==\|<=\|>="
syntax keyword eslispConditional switch if ?:
syntax keyword eslispBranch break continue
syntax keyword eslispRepeat while dowhile for forin
syntax keyword eslispException throw try catch finally debugger
syntax keyword eslispFunction lambda function
syntax keyword eslispKeyword array object regex var . get label new seq block
syntax keyword eslispNull null undefined
syntax keyword eslispThis this
syntax keyword eslispStatement return
syntax keyword eslispOperator new delete instanceof
syntax keyword eslispMacro macro capmacro quote quasiquote unquote unquote-splicing
syntax keyword eslispBoolean true false
syntax keyword eslispGlobal self

syntax region eslispString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region eslispComment start=/\v;/ skip=/\v\\./ end=/\v$/

hi def link eslispConditional Conditional
hi def link eslispBranch Conditional
hi def link eslispRepeat Repeat
hi def link eslispOperator Function
hi def link eslispKeyword Keyword
hi def link eslispString String
hi def link eslispComment Comment
hi def link eslispNull Keyword
hi def link eslispThis Identifier
hi def link eslispException Exception
hi def link eslispFunction Function
hi def link eslispMacro Function
hi def link eslispStatement Statement
hi def link eslispOperator Operator
hi def link eslispBoolean Boolean
hi def link eslispGlobal Structure

let b:current_syntax = "eslisp"
