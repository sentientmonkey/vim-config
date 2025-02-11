" disabled by default
let b:copilot_enabled = v:false

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
