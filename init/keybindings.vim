" set leader
let mapleader = ","
let maplocalleader = ","

" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" edit/reload vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" make
nmap <leader>m :w!\|:!make %<cr>

" autocomplete
" this causes some funny issues, disabling
" inoremap <Tab> <C-x><C-o>

" folding
nnoremap <Space> za

" Bubble single lines
nmap <M-Up> ddkP
nmap <M-Down> ddp
" Bubble multiple lines
vmap <M-Up> xkP`[V`]
vmap <M-Down> xp`[V`]
