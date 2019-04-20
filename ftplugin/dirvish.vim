" Mappings follow (e)xplorer <something> convention.
" (e)xplorer create (f)ile
" (e)xplorer (r)emove
" (e)xplorer create (d)irectory
nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
nnoremap <buffer> ef :!touch %
nnoremap <buffer> ed :!mkdir -p %
