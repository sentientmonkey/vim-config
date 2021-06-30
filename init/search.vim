set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.git,.sass-cache,*/node_modules/*,_site,*/.next/*,*/.vercel/*
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0
"let g:ctrlp_user_command = 'find %s -type f'
"let g:ack_default_options = ' -s -H --nopager --nocolor --nogroup --column --ignore-dir=".next"'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ackprg = "ag --vimgrep"
endif
