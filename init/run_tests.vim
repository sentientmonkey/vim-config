" vim-test defaults
let test#strategy = "basic"

let test#racket#rackunit#executable = 'raco test'
let test#racket#rackunit#file_pattern = '.*\.rkt$'

let test#custom_runners = {'hcl': ['terraform']}
