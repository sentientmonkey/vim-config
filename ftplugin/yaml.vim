let b:ale_fixers = {'yaml': ['trim_whitespace', 'remove_trailing_lines', 'yamlfix']}
let b:ale_linters = {'yaml': ['yaml-language-server']}

let g:ale_yaml_ls_use_global = 1
let b:ale_yaml_ls_config = {
      \'yaml': {
      \   'hover': v:true,
      \   'completion': v:true,
      \   'validate': v:true,
      \   'schema': {
      \     'https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json': 'docker-compose.yaml',
      \     'https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/master-standalone/deployment.json': 'deployment.yaml',
      \    },
      \  },
      \}

"let g:lsp_settings = {
"  'yaml-language-server': {
"    'workspace_config': {
"      'yaml': {
"        'schemas': {
"          'https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json': 'docker-compose.yaml',
"        },
"       'completion': v:true,
"       'hover': v:true,
"       'validate': v:true,
"      },
"    },
"  },
"}
