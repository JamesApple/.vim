Plug 'justinmk/vim-dirvish'           " Hands down the best file browser for Vim
Plug 'kristijanhusak/vim-dirvish-git' " Display file status with color in dirvish

let g:dirvish_mode = ':sort ,^.*[\/],'
let g:dirvish_git_indicators = {
\ 'Modified'  : '✹',
\ 'Staged'    : '✚',
\ 'Untracked' : '✭',
\ 'Renamed'   : '➜',
\ 'Unmerged'  : '═',
\ 'Deleted'   : '✖',
\ 'Ignored'   : '☒',
\ 'Unknown'   : '?'
\ }

