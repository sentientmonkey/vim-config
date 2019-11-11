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
inoremap <Tab> <C-x><C-o>

