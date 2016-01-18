# vim-eslisp
Vim configuration files for eslisp

Highly recommend that ```guns/vim-sexp``` and ```tpope/vim-sexp-mappings-for-regular-people``` plugins be installed for sexp manipulation. Alternatively, you can try ```kovisoft/paredit``` for a heavier, but more complete implmentation.

Then add this to your .vimrc to activate the mappings.
```
let g:sexp_filetypes = 'clojure,scheme,lisp,timl,eslisp'
```
