local config = require('plugins.configs.lspconfig')

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")


lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilites = capabilities,
  filetypes = {"python"},
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        diagnosticMode = "workspace",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    }
  }
})

