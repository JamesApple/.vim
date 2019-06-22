" Goyo:
" Allows a full screen centered pane for focused writing
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }

" Entry Events:
" Zooms Tmux, removes all status lines then sets limelight
function! s:goyo_enter()
  if exists('$TMUX') 
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif

  if &filetype == 'markdown'
    Limelight
  endif
endfunction

function! s:goyo_leave()
  if exists('$TMUX') 
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif

  if &filetype == 'markdown'
    Limelight!
  endif
endfunction

augroup GoyoCommands
  autocmd!
  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()
augroup END

