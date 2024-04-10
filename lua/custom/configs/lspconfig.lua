local config = require("plugins.configs.lspconfig")

local onattach = config.on_attach 
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

-- pyright lsp setup
lspconfig.pyright.setup({
  onattach = onattach,
  capabilities = capabilities,
  filetypes = {"python"},

})


-- tsserver lsp setup
lspconfig.tsserver.setup({
  onattach = onattach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  }
})


