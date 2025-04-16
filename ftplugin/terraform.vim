let g:ale_disable_lsp = 'auto'
let b:ale_fixers = {'terraform': ['terraform']}
let b:ale_linters = {'terraform': ['terraform_ls', 'terraform', 'tflint']}

function! TerraformFolds()
  let thisline = getline(v:lnum)
  if match(thisline, '^resource') >= 0
    return ">1"
  elseif match(thisline, '^provider') >= 0
    return ">1"
  elseif match(thisline, '^module') >= 0
    return ">1"
  elseif match(thisline, '^variable') >= 0
    return ">1"
  elseif match(thisline, '^output') >= 0
    return ">1"
  elseif match(thisline, '^data') >= 0
    return ">1"
  elseif match(thisline, '^locals') >= 0
    return ">1"
  elseif match(thisline, '^terraform') >= 0
    return ">1"
  else
    return "="
  endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=TerraformFolds()

function! TerraformFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction
setlocal foldtext=TerraformFoldText()

setlocal commentstring=#\ %s
