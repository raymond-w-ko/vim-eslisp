if exists("b:current_syntax")
  finish
endif

syntax keyword eslispSpecialForm 
    \ switch if ?:
    \ dowhile for forin
    \ break continue
    \ throw try catch finally debugger
    \ lambda function
    \ . get in
    \ var label
    \ seq block
    \ return
    \ macro capmacro quote quasiquote unquote unquote-splicing

syntax keyword eslispClojureForm
    \ def defn
    \ defarray defobject

syntax match eslispOperator "\<(_++\|_--\|--_\|++_\|\<+\>\|\<-\>\|\<*\>\|\</\>\|+=\|-=\|*=\|/=\|%\|<\|>\|=\|&\||\|!\|\~\|==\|===\|!=\|!==\|<=\|>=)\>"
syntax keyword eslispBuiltinFunctions
    \ array object regex
    \ new delete instanceof

syntax keyword eslispConstants
    \ null undefined true false this

syntax region eslispString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region eslispComment start=/\v;/ skip=/\v\\./ end=/\v$/

hi def link eslispSpecialForm Identifier
hi def link eslispClojureForm Identifier
hi def link eslispOperator Function
hi def link eslispBuiltinFunctions Function
hi def link eslispConstants Boolean
hi def link eslispString String
hi def link eslispComment Comment

let b:current_syntax = "eslisp"
