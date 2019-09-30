Plug 'kristijanhusak/vim-carbon-now-sh', { 'on': 'CarbonNowSh' }
Plug 'junegunn/vim-easy-align', { 'on': 'EasyAlign' } 
let g:easy_align_ignore_comment = 0                                 " align comments
Plug 'tpope/vim-abolish'
Plug 'AndrewRadev/sideways.vim', { 'on': [ 'SidewaysRight', 'SidewaysLeft' ] } 
Plug 'tpope/vim-surround'
let g:surround_no_mappings = 1                                      " Surround default mappings are quite invasive
Plug 'Valloric/MatchTagAlways', { 'for': [ 'html', 'vue', 'jsx' ] } " Always highlight matching xml/html tags
Plug 'tpope/vim-commentary'                                         " Comment with gc
Plug 'tpope/vim-endwise'                                            " Add end after ruby
Plug 'tpope/vim-capslock'                                           " Pseudo caps for SQL
Plug 'tpope/vim-unimpaired'                                         " Many helper functions
Plug 'tpope/vim-repeat'                                             " Many helper functions
Plug 'tpope/vim-obsession', { 'on': 'Obsession' }                   " Many helper functions
Plug 'wellle/targets.vim'
Plug 'google/vim-searchindex'                                       " Adds search numbers
Plug 'editorconfig/editorconfig-vim'                                " Set indentation and etc based on project
Plug 'AndrewRadev/splitjoin.vim'                                    " gJ gS to split and join expressions
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-rbenv', { 'for': ['ruby'] }                         " Ruby versioning
Plug 'tpope/vim-bundler', { 'for': ['ruby'] }                       " Ruby gems helper
Plug 'tpope/vim-sleuth'                                             " Never touch indent settings
Plug 'tpope/vim-apathy'                                             " Path shenanigans
Plug 'tpope/vim-scriptease', { 'for': ['vim'] }                     " Vim editing superpowers
