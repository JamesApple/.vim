Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript'] }
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx', { 'for': ['jsx'] }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mhartington/nvim-typescript'

let g:nvim_typescript#max_completion_detail = 15
let g:nvim_typescript#type_info_on_hold = 1

let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
let g:used_javascript_libs = 'underscore,vue,jquery,react'
