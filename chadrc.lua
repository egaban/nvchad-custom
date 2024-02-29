local M = {}

M.plugins = "custom.plugins"

M.ui = {
  tabufline = {
    enabled = false
  },
  theme = "tokyonight",
}

M.mappings = require "custom.mappings"

return M
