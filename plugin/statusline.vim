" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! GitFileStatus()
  if !exists('b:gitgutter')
    return ''
  endif
  let [l:added, l:modified, l:removed] = get(b:gitgutter, 'summary', [0, 0, 0])
  let l:result = l:added == 0 ? '' : ' +'.l:added
  let l:result .= l:modified == 0 ? '' : ' ~'.l:modified
  let l:result .= l:removed == 0 ? '' : ' -'.l:removed
  if l:result !=? ''
    return ' '.l:result
  endif
  return l:result
endfunction

set statusline+=%{winnr()}
set statusline+=%#PmenuSel#
set statusline+=%{GitBranch()}
set statusline+=%#LineNr#
set statusline+=%{exists('*CapsLockStatusline')?CapsLockStatusline():''}
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=%{GitFileStatus()}
