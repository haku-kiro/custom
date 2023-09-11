-- refer to this link to get config for null-ls (formatters). Assuming that your lsp doesn't support formatting.
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- Python
  b.formatting.black,

  -- Golang
  b.diagnostics.revive,
  b.formatting.gofmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
