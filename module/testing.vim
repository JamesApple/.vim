Plug 'tpope/vim-dispatch' " Asynchronous jobs
Plug 'janko-m/vim-test'   " Asynchronous multi-language testing

let test#strategy = "dispatch"
let test#strategy = {
      \ 'nearest': 'dispatch',
      \ 'file':    'dispatch',
      \ 'suite':   'dispatch_background',
      \}

let test#javascript#jest#executable = 'yarn jest'
let test#javascript#jest#options = '--reporters ~/jest-quickfix-reporter'
let test#ruby#rspec#file_pattern = '_spec\.rb'
let test#ruby#rspec#executable = 'bundle exec rspec'
let test#ruby#rspec#options = {
      \ 'nearest': '--format documentation',
      \ 'file':    '--format progress',
      \ 'suite':   '--format progress',
      \}
