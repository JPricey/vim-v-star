vnoremap <silent>* :<c-u>call <SID>SearchVisualSelection(visualmode())<cr><bar>/<c-r>/<cr>

function! s:SearchVisualSelection(type)
  let unnamed_cache = @@

  if a:type ==# 'v'
    exe "normal! `<v`>y"
  elseif a:type ==# 'char'
    exe "normal! `[v`]y"
  else
    return
  endif

  let @/ = @@

  let @@ = unnamed_cache
  let @0 = unnamed_cache
endfunction
