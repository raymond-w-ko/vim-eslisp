if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

setlocal lisp
" alphabet, numbers, underscore, and hyphen, and other puncutation
setlocal iskeyword=33,35-38,42-255
setlocal lispwords=lambda,function,macro,capmacro,var,if,?:,switch,while,dowhile,for,forin,try,catch,finally
" I assume that these will eventually be custom defined via macros created by
" the user, or make it into the core language
setlocal lispwords+=when,unless
" Clojure
setlocal lispwords+=def,defn,defarray,defobject

" Lisp comments are routinely nested (e.g. ;;; SECTION HEADING)
setlocal comments=n:;
setlocal commentstring=;\ %s

let &cpo = s:cpo_save
unlet s:cpo_save
