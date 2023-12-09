let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:lsp_use_native_client = 1

set omnifunc=ale#completion#OmniFunc

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
