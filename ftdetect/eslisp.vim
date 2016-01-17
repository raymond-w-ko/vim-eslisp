function! s:setf(filetype) abort
  if &filetype !=# a:filetype
    let &filetype = a:filetype
  endif
endfunction

au BufRead,BufNewFile *.esl call s:setf("eslisp")
