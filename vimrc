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
  Plug 'tomasr/molokai'
  Plug 'doums/darcula'
  Plug 'tssm/fairyfloss.vim'

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
  Plug 'tpope/start'

  " Searching
  Plug 'ctrlpvim/ctrlp.vim'

  " Languages
  Plug 'fatih/vim-go'
  Plug 'vim-ruby/vim-ruby'
  Plug 'guns/vim-clojure-static'
  Plug 'wlangstroth/vim-racket'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'ianks/vim-tsx'
  Plug 'leafgarland/typescript-vim'
  Plug 'sentientmonkey/vim-lispy'
  Plug 'lambdatoast/elm.vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'mhinz/vim-mix-format'

  " Development Tool Integration
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-dispatch'
  Plug 'janko/vim-test'
  Plug 'guns/vim-sexp'
  Plug 'Quramy/tsuquyomi'
  Plug 'Shougo/vimproc', { 'do': 'make' }
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-fireplace'


  call plug#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
