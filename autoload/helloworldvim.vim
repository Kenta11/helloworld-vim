" script encoding
scriptencoding utf-8

" load control
if !exists('g:loaded_helloworldvim')
    finish
endif
let g:loaded_helloworldvim = 1

" evacuate user setting temporarily
let s:save_cpo = &cpo
set cpo&vim

function! helloworldvim#helloworld()
    echo "Hello World!"
endfunction

" restore user setting
let &cpo = s:save_cpo
unlet s:save_cpo

