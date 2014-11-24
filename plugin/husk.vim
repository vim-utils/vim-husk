" ============================================================================
" File: husk.vim
" Author: Bruno Sutic
" WebPage: https://github.com/bruno-/vim-husk
" ============================================================================

if exists('g:loaded_husk') && g:loaded_husk
  finish
endif
let g:loaded_husk = 1

let s:save_cpo = &cpo
set cpo&vim

set ttimeout
if &ttimeoutlen == -1
  set ttimeoutlen=50
endif

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <expr> <C-f> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"
cnoremap <expr> <C-d> getcmdpos()>strlen(getcmdline())?"\<Lt>C-d>":"\<Lt>Del>"

if has("gui_running")
  cnoremap <expr> <M-d> husk#del_word()
  cnoremap <expr> <M-b> husk#left()
  cnoremap <expr> <M-f> husk#right()
  cnoremap <M-BS> <C-w>
else
  silent! exe "set <F31>=\<Esc>d"
  silent! exe "set <F34>=\<Esc>\<C-?>"
  silent! exe "set <F35>=\<Esc>\<C-h>"
  silent! exe "set <F36>=\<Esc>b"
  silent! exe "set <F37>=\<Esc>f"
  cnoremap <expr> <F31> husk#del_word()
  cnoremap <F34> <C-w>
  cnoremap <F35> <C-w>
  cnoremap <expr> <F36> husk#left()
  cnoremap <expr> <F37> husk#right()
endif

let &cpo = s:save_cpo
unlet s:save_cpo
