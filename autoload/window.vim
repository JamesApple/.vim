" Use <C-w>z to zoom in and zoom out by leaving the window or tapping again.
" Matches Tmux's tab swapping functionality
function! window#Unzoom()
  if !exists('w:zoomed')
    echo 'Could not unzoom'
  else
    unlet w:zoomed
    wincmd =
  endif
endfunction

function! window#Zoom()
  if exists('w:zoomed')
    call window#Unzoom()
  else
    let w:zoomed = 'TRUE'
    wincmd |
    wincmd _
  endif
endfunction

" Unzoom a window we leave
autocmd  WinLeave,TabLeave * if exists('w:zoomed') | silent! call window#Unzoom() | endif



