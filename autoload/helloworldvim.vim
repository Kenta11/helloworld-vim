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

py3file <sfile>:h:h/src/hello.py
python3 import vim

function! helloworldvim#helloworld()
    python3 helloworld()
endfunction

" restore user setting
let &cpo = s:save_cpo
unlet s:save_cpo

