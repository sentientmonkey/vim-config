" vim-test defaults
let test#strategy = "dispatch"

let test#racket#rackunit#executable = 'raco test'
let test#racket#rackunit#file_pattern = '.*\.rkt$'
