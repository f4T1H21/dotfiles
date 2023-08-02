local M = {}

M.treesitter = {
  ensure_installed = "all",
  sync_install = false,
  auto_install=true,

  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true }
}

return M
