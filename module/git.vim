Plug 'tpope/vim-fugitive'                           " The king of all git plugins
Plug 'tpope/vim-rhubarb'                            " Github helper for Gbrowse with fugitive
Plug 'jreybert/vimagit', { 'on': 'Magit' }          " Interactive staging
Plug 'sodapopcan/vim-twiggy', { 'on': 'Twiggy' }    " Git branch fugitive plugin for easy tracking
let g:twiggy_local_branch_sort = 'mru'

Plug 'airblade/vim-gitgutter'                       " Display git status of lines in buffer
let g:gitgutter_realtime = 0                        " Realtime breaks with Zsh
let g:gitgutter_map_keys = 0                        " No keymaps
let g:gitgutter_max_signs = 200 
let g:gitgutter_eager = 1                           " Load gutter on open
let g:gitgutter_sign_removed = '–' 
let g:gitgutter_diff_args = '--ignore-space-at-eol' " Don't show space changes
let g:gitgutter_override_sign_column_highlight = 0

Plug 'gregsexton/gitv', {'on': 'Gitv'}              " View fugitive diffs based on log for individual files or whole project
let g:Gitv_DoNotMapCtrlKey = 1
let gitgutter_blacklist = ['dirvish', 'fugitive']
augroup gitGutterFiletypeDisabler
  autocmd BufLeave * if index(gitgutter_blacklist, &ft) < 0 | :GitGutterEnable
  autocmd BufEnter */ :GitGutterDisable
augroup END
let g:Gitv_CustomMappings = {
      \'quit': 'q',
      \'update': 'u',
      \'toggleAll': 'a',
      \'nextBranch': 'x',
      \'prevBranch': 'X',
      \'nextRef': 'r',
      \'prevRef': 'R',
      \'editCommit': [ '<CR>', { 'keys': '<LeftMouse>', 'prefix': '<LeftMouse>' } ],
      \'editCommitDetails': 'i',
      \'prevCommit': 'J',
      \'nextCommit': 'K',
      \'splitCommit': 'o',
      \'vertSplitCommit': 's',
      \'tabeCommit': 'O',
      \'diff': 'D',
      \'vdiff': 'D',
      \'stat': 'S',
      \'vstat': 'S',
      \'checkout': 'co',
      \'merge': '<leader>m',
      \'vmerge': 'm',
      \'cherryPick': 'cp',
      \'vcherryPick': 'cp',
      \'reset': 'rb',
      \'vreset': 'rb',
      \'resetSoft': 'rbs',
      \'vresetSoft': 'rbs',
      \'resetHard': 'rbh',
      \'vresetHard': 'rbh',
      \'revert': 'rev',
      \'vrevert': 'rev',
      \'delete': 'd',
      \'vdelete': 'd',
      \'rebase': 'grr',
      \'vrebase': 'grr',
      \'rebasePick': 'grP',
      \'vrebasePick': 'grP',
      \'rebaseReword': 'grR',
      \'vrebaseReword': 'grR',
      \'rebaseMarkEdit': 'grF',
      \'vrebaseMarkEdit': 'grF',
      \'rebaseSquash': 'grF',
      \'vrebaseSquash': 'grF',
      \'rebaseFixup': 'grF',
      \'vrebaseFixup': 'grF',
      \'rebaseExec': 'grF',
      \'vrebaseExec': 'grF',
      \'rebaseDrop': 'grF',
      \'vrebaseDrop': 'grF',
      \'rebaseAbort': 'gra',
      \'rebaseToggle': 'grs',
      \'vrebaseToggle': 'grs',
      \'rebaseSkip': 'grn',
      \'rebaseContinue': 'grc',
      \'rebaseEdit': 'gre',
      \'bisectStart': 'gbs',
      \'vbisectStart': 'gbs',
      \'bisectGood': 'gbg',
      \'vbisectGood': 'gbg',
      \'bisectBad': 'gbb',
      \'vbisectBad': 'gbb',
      \'bisectSkip': 'gbn',
      \'vbisectSkip': 'gbn',
      \'bisectReset': 'gbr',
      \'bisectLog': 'gbl',
      \'bisectReplay': 'gbp',
      \'head': 'P',
      \'parent': 'p',
      \'toggleWindow': 'gw',
      \'git': 'git',
      \'yank': 'yc'
      \}

