local b = require('null-ls')

local opts = {
  sources = {
    b.builtins.diagnostics.mypy,
    b.builtins.diagnostics.ruff,
    b.builtins.formatting.autopep8
  }
}

return opts
