" https://tabnine.com/install
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Completion Manager
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/echodoc.vim'                                     " Echo method signatures to command window
let g:echodoc_enable_at_startup=1
let g:echodoc#type = 'signature'

Plug 'Shougo/neco-syntax'                                     " Completion from syntax file
Plug 'Shougo/neco-vim',             { 'for': ['vim'] }        " Vim Source

Plug 'ervandew/supertab'                                      " Make tab completion easier
let g:SuperTabDefaultCompletionType = "<c-n>"                 " Default to complete down the list

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 0
let g:LanguageClient_rootMarkers = ['.flowconfig']
let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658'],
    \ 'javascript': ['yarn', 'flow', 'lsp', '--from', './node_modules/.bin'],
    \ 'javascript.jsx': ['yarn', 'flow', 'lsp', '--from', './node_modules/.bin'],
    \ 'Dockerfile': ['docker-langserver', '--stdio'],
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ }

" call deoplete#custom#option('profile', v:true)
" call deoplete#enable_logging('DEBUG', 'deoplete.log')
" \ 'go': ['go-langserver', '-gocodecompletion']
