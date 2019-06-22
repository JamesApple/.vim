Plug 'SirVer/ultisnips'
" Plug 'JamesApple/ultisnips' " Yeah it's snippets

" " Add python helpers:
autocmd! User ultisnips py import sys; sys.path.append("~/.vim/UltiSnips/python_helpers")
let UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let UltiSnipsEditSplit = 'vertical'
let UltiSnipsListSnippets = '<nop>'
let ulti_expand_or_jump_res = 0
let UltiSnipsExpandTrigger="<s-tab>"
let UltiSnipsJumpForwardTrigger="<tab>"
let UltiSnipsJumpBackwardTrigger="<s-tab>"
