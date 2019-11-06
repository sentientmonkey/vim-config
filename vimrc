" ----------
" Vim Config
" ----------

set nocompatible
filetype off
syntax on

if empty(system("grep vim-plug ~/.vim/autoload/plug.vim"))
  echoerr "vim-plug is not installed. Please run ~/.vim/bin/install"
else
  " Initialize plugin system
  call plug#begin('~/.vim/plugged')

  " Colors
  Plug 'tpope/vim-vividchalk'
  Plug 'altercation/vim-colors-solarized'
  Plug 'chriskempson/vim-tomorrow-theme'
  Plug 'kien/rainbow_parentheses.vim'

  " General
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Editing
  Plug 'junegunn/vim-easy-align'

  " Languages
  Plug 'fatih/vim-go'
  Plug 'vim-ruby/vim-ruby'
  Plug 'guns/vim-clojure-static'
  Plug 'tpope/vim-fireplace'
  Plug 'wlangstroth/vim-racket'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'sentientmonkey/vim-lispy'

  " Development Tool Integration
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-dispatch'
  Plug 'janko/vim-test'
  Plug 'guns/vim-sexp'

  call plug#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
