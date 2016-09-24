vnoremap <silent>* :<c-u>call <SID>SearchVisualSelection(visualmode())<cr>/<c-r>/<cr>

function! s:SearchVisualSelection(type)
  if a:type ==# 'v'
    let unnamed_cache = @@
    exe "normal! `<v`>y"
    let @/ = @@
    let @@ = unnamed_cache
    let @0 = unnamed_cache
  else
    " Keep * behaviour for other modes
    normal! gv
    let @/ = '\<' . expand('<cword>') . '\>'
  endif
endfunction
