if exists('$TMUX')
  Plug 'christoomey/vim-tmux-navigator' " Allow <C-H/J/K/L> movement between vim and tmux splits

  if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
endif
