local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    -- These are ones that I need,
    "fish",
    "dockerfile",
    "c_sharp",
    "cmake",
    "cpp",
    "csv",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "graphql",
    "http",
    "java",
    "jq",
    "json",
    "latex",
    "matlab",
    "ocaml",
    "python",
    "r",
    "ruby",
    "rust",
    "sql",
    "toml",
    "vue",
    "yaml",
    "xml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- additional that I've added.
    "gopls",
    "omnisharp",
    "jedi-language-server",
    "revive",
    "csharpier",
    "ocaml-lsp",
    "ocamlformat",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.blankline = {
  show_current_context_start = false,
}

M.cmp = {
  enabled = function()
    -- disable completion in comments
    local context = require "cmp.config.context"
    -- keep command mode completion enabled when cursor is in a comment
    if vim.api.nvim_get_mode().mode == "c" then
      return true
    else
      return not context.in_treesitter_capture "comment" and not context.in_syntax_group "Comment"
    end
  end,
}

return M
