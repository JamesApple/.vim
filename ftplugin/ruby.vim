if exists('b:did_ftplugin')
  finish
endif

nnoremap <buffer><silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <buffer><silent> gd :call LanguageClient#textDocument_definition()<CR>
