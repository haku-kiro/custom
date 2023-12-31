local M = {}

M.base_30 = {
  white = "#F8F8FF",
  white2 = "#DFDFE5",
  tan = "#CFC1B2",
  darker_black = "#181818",
  black = "#030303", --  nvim bg
  black2 = "#030303",
  one_bg = "#0B0705",
  one_bg2 = "#28231D",
  one_bg3 = "#3C4748",
  grey = "#393959",
  grey_fg = "#434363",
  grey_fg2 = "#4d4d6d",
  light_grey = "#5c5c7c",
  red = "#ffdd33",
  baby_pink = "#FF8E78",
  pink = "#ffafb7",
  line = "#202040", -- for lines like vertsplit
  green = "#9BCCBF",
  vibrant_green = "#b9e75b",
  nord_blue = "#a1bce1",
  blue = "#6699cc",
  yellow = "#ffdd33",
  sun = "#FFD392",
  purple = "#99A4BC",
  dark_purple = "#635196",
  teal = "#34BFA4",
  orange = "#f99157",
  cyan = "#BFDAFF",
  statusline_bg = "#3C4748",
  lightbg = "#3C4748",
  pmenu_bg = "#FFB07B",
  folder_bg = "#598cbf",
  comment = "#cc8c3c",
  builtin = "#888F89",
}

M.base_16 = {
  base00 = "#181818",
  base01 = "#00040D",
  base02 = "#3A3A3A",
  base03 = "#FFFFFF",
  base04 = "#e4e4eb",
  base05 = "#eeeef5",
  base06 = "#f3f3fa",
  base07 = "#F8F8FF",
  base08 = "#BFDAFF",
  base09 = "#B4B4B9",
  base0A = "#96a6c8",
  base0B = "#73c936",
  base0C = "#B4B4B9",
  base0D = "#ffdd33",
  base0E = "#8BCCBF",
  base0F = "#DFDFE5",
}

M.polish_hl = {
  Statement = { fg = M.base_30.purple },
  Type = { fg = M.base_30.white2 },
  Include = { fg = M.base_30.yellow },
  Keyword = { fg = M.base_16.base0D },
  Operator = { fg = M.base_30.red },
  ["@keyword"] = { fg = M.base_16.base0D },
  ["@keyword.function"] = { fg = M.base_30.yellow },
  Namespace = { fg = M.base_16.base03 },
  ["@function"] = { fg = M.base_16.base0A },
  ["@parameter"] = { fg = M.base_16.base03 },
  ["@type.builtin"] = { fg = M.base_30.builtin },
  Conditional = { fg = M.base_30.yellow },
  ["@field"] = { fg = M.base_16.base03 },
  ["@constant"] = { fg = M.base_16.base03 },
  ["@property"] = { fg = M.base_16.base03 },
  ["@method.call"] = { fg = M.base_16.base03 },
  ["@function.call"] = { fg = M.base_16.base03 },
  ["@keyword.operator"] = { fg = M.base_16.base03 },
  ["@keyword.return"] = { fg = M.base_30.yellow },
  Repeat = { fg = M.base_30.yellow },
  Boolean = { fg = M.base_30.yellow },
  Comment = { fg = M.base_30.comment },
}

M.type = "dark"

M = require("base46").override_theme(M, "abc")

return M
