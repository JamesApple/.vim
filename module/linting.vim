Plug 'w0rp/ale' " Linting

let g:ale_sign_column_always = 1  " Keep ale from sliding in and out
let g:ale_sign_error = "\uf421"   " Nerdfont error
let g:ale_sign_warning = "\uf12a" " Nerdfont warning
let g:ale_set_highlights = 0      " Don't show inline highlights for issus

let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_format = 'ALE:%linter% %s'

let g:ale_linters = {
      \ 'javascript': ['flow', 'eslint'],
      \   'markdown': ['proselint', 'write-good', 'mdl']
      \}

let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \   'ruby': ['rubocop'],
      \   'vue': ['prettier'],
      \   'json': ['prettier'],
      \   'scss': ['stylelint'],
      \   'typescript': ['prettier', 'tslint', 'eslint'],
      \   'go': ['gofmt', 'goimports'],
      \   'terraform': ['terraform']
      \}
