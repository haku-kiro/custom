local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "jedi_language_server", "gopls", "ocamllsp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local pid = vim.fn.getpid()
-- TODO: Check for windows as well?
local is_mac = vim.loop.os_uname().sysname == "Darwin"

-- default to linux install location,
local omnisharp_bin = "/home/odin/.local/share/nvim/mason/bin/omnisharp-mono"

if is_mac then
  -- Mac install location,
  omnisharp_bin = "/Users/michaeldacosta/.local/share/nvim/mason/packages/omnisharp-mono/run"
end

lspconfig["omnisharp"].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
}
