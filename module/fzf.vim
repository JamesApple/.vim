Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Executable
Plug 'junegunn/fzf.vim'                                           " Mappings

set runtimepath+=/usr/local/opt/fzf                               " Add FZF executable to runtime

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob  "!.git/"'                               " Default to fiels
let g:fzf_buffers_jump = 1                                                                               " Jump to window with buffer if it exists
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"' " Nice commit log
let g:fzf_nvim_statusline = 0                                                                            " disable statusline overwriting
let g:fzf_history_dir = '~/.local/share/fzf-history'                                                     " Keep history
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

