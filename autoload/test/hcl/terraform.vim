if !exists('g:test#hcl#terraform#file_pattern')
  let g:test#hcl#terraform#file_pattern = '\v\.tftest\.hcl$'
endif

" Returns true if the given file belongs to your test runner
function! test#hcl#terraform#test_file(file)
  return a:file =~# g:test#hcl#terraform#file_pattern
endfunction

" Returns test runner's arguments which will run the current file and/or line
function! test#hcl#terraform#build_position(type, position)
  return [a:position['file']]
endfunction

" Returns processed args (if you need to do any processing)
function! test#hcl#terraform#build_args(args)
  " figure out test directory path
  return a:args
endfunction

" Returns the executable of your test runner
function! test#hcl#terraform#executable()
  return 'terraform test'
endfunction
