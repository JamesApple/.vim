" Early exists a script if it has already been loaded
function! meta#RunOnce(globalIdentifier)
  let result = ''
  if exists( 'g:' . a:globalIdentifier )
    let result = 'finish'
  else
    let g:{a:globalIdentifier} = 1
  endif
  return result
endfunction
