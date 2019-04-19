" Refresh file when vim gets focus
augroup ReloadcurrentFile
  autocmd!
  autocmd FocusGained,BufEnter * checktime 
augroup END

" Disable cursor line in nonselected buffers
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

"""""Filetypes"""""

augroup FTDetects
    au BufRead,BufNewFile .tern-project setfiletype json
    au BufRead,BufNewFile .babelrc setfiletype json
    au BufRead,BufNewFile Procfile setfiletype yaml
    au BufRead,BufNewFile .env.override setfiletype sh
    au BufRead,BufNewFile .env.example setfiletype sh
    au BufRead,BufNewFile .envrc setfiletype sh
    au BufRead,BufNewFile *.log setfiletype log
    " These are for my own configuration management system
    au BufRead,BufNewFile *input/.gitconfig/* setfiletype gitconfig
    au BufRead,BufNewFile *input/.gitignore/* setfiletype gitignore
    au BufRead,BufNewFile *input/.zshrc/* setfiletype zsh
    au BufRead,BufNewFile *input/.zshenv/* setfiletype zsh
    au BufRead,BufNewFile *input/.zlogin/* setfiletype zsh
    au BufRead,BufNewFile *input/.vimrc/* setfiletype vim
    au BufRead,BufNewFile *input/.tmux.conf/* setfiletype conf
augroup END

augroup FTSettings
    au FileType snippets setlocal foldmethod=marker tabstop=2 shiftwidth=2
    au FileType gitcommit setlocal spell
    au FileType git,gitcommit setlocal foldmethod=syntax foldlevel=1
    au FileType sql setlocal shiftwidth=2 tabstop=2
    au BufEnter *.snippets PyParensEnable
    au BufLeave *.snippets PyParensDisable
augroup END

augroup FTMaps
    au FileType help nnoremap <silent><buffer> q :q<CR>
augroup END
