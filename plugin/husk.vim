" ============================================================================
" File: husk.vim
" Author: Bruno Sutic
" WebPage: https://github.com/vim-utils/vim-husk
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

function! s:enable_husk()
  cnoremap <C-a> <Home>
  cnoremap <C-b> <Left>
  cnoremap <expr> <C-f> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"
  cnoremap <expr> <C-d> getcmdpos()>strlen(getcmdline())?"\<Lt>C-d>":"\<Lt>Del>"
  cnoremap <C-x><C-e> <C-f>

  if get(g:, 'husk_ctrl_k', 1)
    cnoremap <expr> <C-k> husk#clear_line_after_cursor()
  endif

  if !has('gui_running') && !has('nvim')
    cmap <Esc>d <M-d>
    cmap <Esc>b <M-b>
    cmap <Esc>f <M-f>
    cmap <Esc># <M-#>
    cmap <Esc><C-?> <M-BS>
    cmap <Esc><C-h> <M-BS>
    cmap <Esc><BS> <M-BS>

    cnoremap <nowait> <expr> <Esc> stridx(&cpo, 'x') < 0 ? "\<C-c>" : "\<Esc>"
  endif

  cnoremap <expr> <M-d> husk#del_word()
  cnoremap <expr> <M-b> husk#left()
  cnoremap <expr> <M-f> husk#right()
  cnoremap <expr> <M-#> "\<Home>\"\<CR>"
  cnoremap <M-BS> <C-w>
endfunction

call <SID>enable_husk()

let &cpo = s:save_cpo
unlet s:save_cpo
