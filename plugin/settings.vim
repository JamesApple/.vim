set clipboard+=unnamedplus           " Use system clipboard for copy and paste

set grepprg=rg\ --vimgrep            " Use ripgrep for grepping

set shell=zsh
set title                            " change the terminal's title
set noswapfile                       " Disable using *.swp
set directory=~/.vimtmp              " Create global swp file in .vimtmp
set path=$PWD/**                     " Add all folders in root to path
set visualbell                       " Flash instead of dinging

set warn                             " Issue a warning when running a shell command with unsaved changes
set confirm                          " Failed commands will ask permission occasionally
set cmdheight=2                      " Command line supports 2 lines
set history=500                      " Store lots of :cmdline history
set wildmode=full                    " Show a list and then the actual completion in wildmenu
set wildmenu                         " Enable wildmenu command completion
set wildchar=<Tab>                   " Use tab to run completion commands
set showcmd                          " Always show current command

set lazyredraw                       " Speed up on larger files
set splitbelow                       " Split down not up
set noequalalways                    " Don't equalize windows when I change a window
set hidden                           " Hide buffers instead of deleting
set autoread                         " Always read from a file when it has been changed externally
set colorcolumn=80                   " Highlight column at character width
set winheight=10                     " Minimum height for focused window
set winwidth=40                      " Minimum width for focused window
set number                           " Display line numbers

set conceallevel=2                   " Enable conceals for dirvish and more

set diffopt=filler,vertical          " default behavior for diff

set showtabline=2                    " Always show tabline
set laststatus=2                     " Always show statusline

set mouse=a                          " en/disable mouse for everything

set timeoutlen=1000 ttimeoutlen=0    " Reduce Command timeout for faster escape

set nowrap                           " Disable wrapping by default

set hlsearch                         " Show highlights for search words
set incsearch                        " Show matches as they're typed
set inccommand=nosplit               " Interactively show :%s/replace/method
set ignorecase                       " Ignore letter case
set smartcase                        " Ovveride ignore case when capitals are present
set gdefault                         " Search / Substitution commands no longer need 'g'


let &t_8f="\<Esc>[38;2;%lu;%lu;%lum" " Set block cursor escape sequence
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum" " Set line cursor escape sequence
set cursorline                       " Highlight current line
set scrolloff=999                    " Keep cursor in middle of screen
set sidescrolloff=15                 " Keep window with cursor at least this far from top/bottom
set sidescroll=5                     " Keep window with cursor at least this far from the sides

set shiftround                       " Round indents to multiple of shiftwidth (2, 4, 6 never 5, 3 or 1)

                                     " Use these characters to mimic hidden characters
set list                             " Show hidden chars
set listchars=\
      \tab:•·,
      \trail:·,
      \extends:❯,
      \precedes:❮,
      \nbsp:×

set foldmethod=indent                " Always fold on indents, syntax is too heavy
set foldopen=
      \undo,
      \tag,
      \insert,
      \jump,
      \mark,
      \percent,
      \search
