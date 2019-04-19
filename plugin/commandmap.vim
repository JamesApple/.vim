" Alias my common mistakes
command! Wq wq
command! WQ wq
command! W w
command! Q q

" Enable preview in :Files
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Custom Ripgrep implementation
command! -bang -nargs=* Rg 
  \ call fzf#vim#grep(
  \   'rg --glob "!.git/*" --column --follow --hidden --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>, 1),
  \   0,
  \   fzf#vim#with_preview('right:40%', '?'),
  \   1)

" Custom Ripgrep MULTILINE implementation
command! -bang -nargs=* Rgm 
  \ call fzf#vim#grep(
  \   'rg --glob "!.git/*" --column --follow --hidden --line-number -U --multiline-dotall --no-heading --color=always --smart-case '.shellescape(<q-args>, 1).' -r '.shellescape("'$1'", 1),
  \   0,
  \   fzf#vim#with_preview('right:40%', '?'),
  \   1)

