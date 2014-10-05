" ============================================================================
" File: husk.vim
" Author: Bruno Sutic
" Version: 0.0.1
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

function! husk#left()
  let line = getcmdline()
  let pos = getcmdpos()
  let next = 1
  let nextnext = 1
  let i = 2
  while nextnext < pos
    let next = nextnext
    let nextnext = match(line, '\<\S\|\>\S\|\s\zs\S\|^\|$', 0, i) + 1
    let i += 1
  endwhile
  return repeat("\<Left>", pos - next)
endfunction

function! husk#abstract_right(command)
  let line = getcmdline()
  let pos = getcmdpos()
  let next = 1
  let i = 2
  while next <= pos && next > 0
    let next = match(line, '\<\S\|\>\S\|\s\zs\S\|^\|$', 0, i) + 1
    let i += 1
  endwhile
  return repeat(a:command, next - pos)
endfunction

function! husk#right()
  return husk#abstract_right("\<Right>")
endfunction

function! husk#del_word()
  return husk#abstract_right("\<Right>\<BS>")
endfunction

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
