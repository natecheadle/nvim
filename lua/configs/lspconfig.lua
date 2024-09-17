-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- EXAMPLE
local nvlsp = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "cmake", "csharp_ls", "clangd", "pyright", "texlab" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

