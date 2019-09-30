augroup Projects
  autocmd! BufRead,BufNewFile */platform/* 
        \ set tags+=gems.tags,stdlib.tags 
        \ | nnoremap <leader>tj :!tmux split-window -h -p 30 yarn jest --watch %:h<CR> 
        \ | nnoremap <leader>tr :!tmux split-window -h -p 30 guard<CR>
        \ | au FileType javascript
          \ set include=^\\s*[^\/]\\+\\(from\\\|require(['\"]\\)
          \ | set path+=node_modules,app/javascript/packs/platform_web,app/javascript/packs
augroup END
