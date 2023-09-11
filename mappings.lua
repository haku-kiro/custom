---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<C-k>"] = { "<cmd> Telescope keymaps <CR>", "Show all the current key mappings" },
  },
}

-- more keybinds!

return M
