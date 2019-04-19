if exists('b:did_ftplugin')
  finish
endif

" Allow following links with gf/gx instead of ge
nnoremap <buffer> gf ge
setlocal spell spelllang=en_us wrap textwidth=0 linebreak foldlevel=2

" Block-wise in-paragraph navigation
nnoremap <buffer> j gj
nnoremap <buffer> k gk
inoremap <buffer> <Down> <C-o>gj
inoremap <buffer> <Up> <C-o>gk
