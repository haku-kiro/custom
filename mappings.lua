---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<C-k>"] = { "<cmd> Telescope keymaps <CR>", "Show all the current key mappings" },
    ["<leader>mm"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Show symbols in current file" },
  },
}

-- more keybinds!

return M
