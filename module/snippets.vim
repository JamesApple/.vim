Plug 'JamesApple/ultisnips' " Yeah it's snippets

" Add python helpers:
autocmd! User ultisnips py import sys; sys.path.append("~/configurator/snippets/python_helpers")

let UltiSnipsSnippetsDir = '~/configurator/snippets'
let UltiSnipsSnippetDirectories=[$HOME.'/configurator/snippets']
let UltiSnipsEditSplit = 'vertical'
let UltiSnipsListSnippets = '<nop>'
let ulti_expand_or_jump_res = 0
let UltiSnipsExpandTrigger="<s-tab>"
let UltiSnipsJumpForwardTrigger="<tab>"
let UltiSnipsJumpBackwardTrigger="<s-tab>"
