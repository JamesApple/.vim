if exists(':tnoremap')
  tnoremap   <ESC>      <C-\><C-n>
endif

inoremap jj <ESC>
xnoremap r <C-v>

" Replace within block
nnoremap <leader>r :'{,'}Subvert/<c-r><c-w>//g<left><left>
xnoremap <leader>r y:'{,'}Subvert/<c-r><c-0>//g<left><left>

nmap <leader>u :UndotreeToggle<CR>

vnoremap <silent><leader>p :CarbonNowSh<CR>

vnoremap <silent> ; :EasyAlign<cr>

nmap <silent> <leader>l :call quickfix#ToggleList("Location List", 'l')<CR>
nmap <silent> <leader>q :call quickfix#ToggleList("Quickfix List", 'C')<CR>

nnoremap <silent> Q <C-w>c

nnoremap <silent> <C-w>z :call window#Zoom()<CR>

" Multiple indents
vnoremap > >gv
vnoremap < <gv

" Makes Y consistent with D
nnoremap Y y$ 

" Invert mark jumping keys
nnoremap ' `
nnoremap ` '

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Move to first character at SOL above
nnoremap <Backspace> -

" Move around using C-h|j|k|l in insert mode
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>

" Split lines like J
nmap <C-j> i<CR><ESC>

" Keep search results in center of screen
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" Make C-w the same in insert and normal
inoremap <C-w>k <ESC><C-w>k
inoremap <C-w>j <ESC><C-w>j
inoremap <C-w>l <ESC><C-w>l
inoremap <C-w>h <ESC><C-w>h

nnoremap <silent> <C-w>t :tabnew<CR>


" Disable Arrow Keys
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

" Indent entire file
nnoremap == mzgg=G`z

" Fix syntax in long files
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"  Vim Editing
nmap <silent> <leader>vr :so $MYVIMRC<CR>| "(v)im (r)eload
"(v)im (c)ompile
nmap <silent> <leader>vc 
      \  :! cd ~/configurator && 
      \  ./configurator<CR>
      \  :so $MYVIMRC<CR>
" (v)im (C)ompile and install
nmap <silent> <leader>vC 
      \  :! cd ~/configurator && .
      \  /configurator<CR>
      \  :so $MYVIMRC<CR>
      \  :PlugInstall<CR>
" Execute visual selection in vim
vmap <leader>vs y:@"<CR>

nnoremap g< :SidewaysLeft<CR>
nnoremap g> :SidewaysRight<CR>

nnoremap <silent><leader>f :ALEFix<CR>

nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tF :TestFile<CR>
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tp :TestLast<CR>
nnoremap <leader>to :TestVisit<CR>

nnoremap <leader>Q :Copen<CR>

nnoremap <silent><leader>sf :FZF<CR>     | " (s)earch (f)iles in repo
nnoremap <silent><leader>sb :Buffers<CR> | " (s)earch (b)uffers
nnoremap <silent><leader>sh :History<CR> | " (s)earch (h)istory
nnoremap <silent><leader>st :Rg<CR>      | " (s)earch (t)ext
nnoremap <leader>sT :Rg                  | " (s)earch (T)ext with regex

nnoremap <silent> <leader><leader> :Files ~/notes/<CR>

" Get the current highlight group. Useful for then remapping the color
map <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
map <leader>!hi :so $VIMRUNTIME/syntax/hitest.vim<CR>| " Output all current highlights


imap <C-l> <C-O><Plug>CapsLockToggle

" ENDWISE:
nmap o A<CR>

" SURROUND:
" I never use the native s mappings. I use c and r
nmap s  <Plug>Ysurround
nmap S  <Plug>YSurround
nmap ss <Plug>Yssurround
nmap Ss <Plug>YSsurround
nmap SS <Plug>YSsurround

" Add back in the defaults because I disable surround setting maps at all
nmap ds  <Plug>Dsurround
nmap cs  <Plug>Csurround
nmap cS  <Plug>CSurround

xmap s   <Plug>Vsurround
xmap S   <Plug>VSurround
xmap gS  <Plug>VgSurround


nnoremap <silent> <Leader>ghu :GitGutterRevertHunk<CR>
nnoremap <silent> <Leader>ghs :GitGutterStageHunk<CR>
nnoremap yog :GitGutterToggle<CR>| " Unimpaired style toggle


" Git Branch
nnoremap <leader>gb :Twiggy<CR>

" Git Commit
nnoremap <leader>gc :Gcommit<CR>

" Git Log
nnoremap <leader>gl :Gitv!<CR>
nnoremap <leader>gL :Gitv<CR>

" Add folder / File or interactive staging
nnoremap <leader>ga :Magit<CR>
nnoremap <leader>gA :!git add %<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>
