" script encoding
scriptencoding utf-8

" load control
if exists('g:loaded_helloworld_vim')
    finish
endif
let g:loaded_helloworld_vim = 1

" evacuate user setting temporarily
let s:save_cpo = &cpo
set cpo&vim

" processing
nmap z :call helloworld_vim#helloworld()<CR>

" restore user setting
let &cpo = s:save_cpo
unlet s:save_cpo

