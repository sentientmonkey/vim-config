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
      \     'https://json.schemastore.org/kustomization.json': 'kustomization.yaml',
      \     'https://kubernetesjsonschema.dev/master-standalone/cronjob.json': 'cronjob.yaml',
      \     'https://kubernetesjsonschema.dev/master-standalone/horizontalpodautoscaler.json': 'hpa.yaml',
      \     'https://kubernetesjsonschema.dev/master-standalone/service.json': 'service.yaml',
      \     'https://kubernetesjsonschema.dev/master-standalone/deployment.json': 'deployment.yaml',
      \     'https://raw.githubusercontent.com/datreeio/CRDs-catalog/main/security.istio.io/authorizationpolicy_v1.json': '*policy.yaml',
      \     'https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json': 'workflow.yaml',
      \     'https://raw.githubusercontent.com/argoproj/argo-events/master/api/jsonschema/schema.json': 'events.yaml',
      \     'https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json': '.gilab-ci.yaml'
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
