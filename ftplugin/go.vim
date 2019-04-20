if exists('b:did_ftplugin')
  finish
endif

setlocal nolist tabstop=2 

nnoremap <buffer> <leader>tl :GoMetaLinter<CR>
nnoremap <buffer> <leader>tf :GoTest<CR>
nnoremap <buffer> <leader>tn :GoTestFunc<CR>
nnoremap <buffer> <leader>tc :GoCoverage<CR>

nnoremap <buffer> <leader>pr :GoRun<CR>
nnoremap <buffer> <leader>pb :GoBuild<CR>
nnoremap <buffer> <leader>pd :GoDocBrowser<CR>
nnoremap <buffer> <leader>i :GoImport | " Required bar for space
nnoremap <buffer> <leader>I :GoImport! | " Required bar for space

nnoremap <buffer> gd :GoDef<CR>

command! -buffer A :GoAlternate!

call meta#RunOnce("ftplugingo")
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
