" Enable ftplugin scripts to be sourced by vim
filetype plugin indent on

" Must be set before plugins are loaded
let g:mapleader = "\<Space>"

" Plugins may use python2/python3 independently.
" These globals must point to their respective binaries.
let g:python_host_prog =  '/usr/local/var/pyenv/versions/2.7.10/bin/python'
let g:python3_host_prog = '/usr/local/var/pyenv/versions/3.7.3/bin/python'
let g:node_host_prog = expand('~/.nvm/versions/node/v10.15.3/bin/neovim-node-host')

" Immediately set up and install vim-plug and plugins if they don't exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Source vim-plug plugins defined in the module/ directory
call plug#begin('~/.vim/plugged')
runtime! module/**/*.vim
call plug#end()

runtime vimrc
