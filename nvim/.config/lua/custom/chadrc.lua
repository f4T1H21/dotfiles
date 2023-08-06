---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "doomchad",
  theme_toggle = { "doomchad", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode_colored",
  },
}

M.plugins = "custom.plugins"
M.lazy_nvim = require "custom.configs.lazy_nvim"
-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M