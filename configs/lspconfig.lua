local chad_lspconfig = require "plugins.configs.lspconfig"
local on_attach = chad_lspconfig.on_attach
local capabilities = chad_lspconfig.capabilities

local lspconfig = require "lspconfig"

local servers = {
  texlab = {
    texlab = {
      build = {
        args = { "-pdflua", "-interaction=nonstopmode", "-synctex=1", "%f" },
        onSave = true
      }
    }
  },
  gopls = {},
  html = {},
  rust_analyzer = {},
}

for server, settings in pairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  }
end
