let g:lsp_settings = {
\  'rnix-lsp': {'disabled': v:true},
\  'nixd': {'expr': 'import <nixpkgs> {}'}
\}



let b:ale_fixers = {'nix': ['nixfmt']}
let b:ale_linters = {'nix': ['deadnix', 'nix', 'nixd', 'statix']}
" other options...
" let b:ale_fixers = {'nix': ['nixfmt']}
" let b:ale_fixers = {'nix': ['nixpkgs-fmt']}
