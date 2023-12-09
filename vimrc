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
  Plug 'folke/tokyonight.nvim'

  " Plug 'kien/rainbow_parentheses.vim'
  Plug 'luochen1990/rainbow'

  " General
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Editing
  Plug 'junegunn/vim-easy-align'

  " Searching
  " Plug 'ctrlpvim/ctrlp.vim'
  " Plug 'mileszs/ack.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Languages
  Plug 'fatih/vim-go'
  Plug 'vim-ruby/vim-ruby'
  Plug 'sunaku/vim-ruby-minitest'
  Plug 'guns/vim-clojure-static'
  Plug 'wlangstroth/vim-racket'
  Plug 'pangloss/vim-javascript'
  Plug 'Galooshi/vim-import-js'
  Plug 'mxw/vim-jsx'
  Plug 'ianks/vim-tsx'
  Plug 'leafgarland/typescript-vim'
  Plug 'Quramy/tsuquyomi'
  Plug 'sentientmonkey/vim-lispy'
  Plug 'sentientmonkey/vim-lox'
  Plug 'lambdatoast/elm.vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'mhinz/vim-mix-format'
  Plug 'LnL7/vim-nix'
  Plug 'vim-crystal/vim-crystal'

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
  Plug 'dense-analysis/ale'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'rhysd/vim-lsp-ale'
  Plug 'mattn/vim-lsp-settings'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-commentary'

  " Misc
  Plug 'vimwiki/vimwiki'
  Plug 'mattn/calendar-vim'

  call plug#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
