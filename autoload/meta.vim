" RUN ONCE IN SCRIPTS:
function! meta#RunOnce(globalIdentifier)
  let result = ''
  if exists( 'g:' . a:globalIdentifier )
    let result = 'finish'
  else
    let g:{a:globalIdentifier} = 1
  endif
  return result
endfunction

" LONG LIVED ECHO MESSAGE:
" Not meant to keep the message there long. Just enough to prevent immediate
" redraw in scripts
function! meta#Echo(msg)
  echo a:msg
  let g:PersistentEcho = a:msg
  return ''
endfunction
let g:PersistentEcho = ''
if &ut>200|let &ut=200|endif
au CursorHold * if PersistentEcho!=''|echo PersistentEcho|let PersistentEcho=''|endif
