" disabled by default
let b:copilot_enabled = v:false

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

let g:copilot_filetypes = {
    \ '*': v:false,
    \ 'go': v:false,
    \ 'terraform': v:false,
    \ 'terraform-vars': v:false,
    \ 'vimwiki': v:false,
    \ }
