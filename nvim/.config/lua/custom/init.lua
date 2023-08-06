local o = vim.opt
local g = vim.g

-- g.markdown_fenced_languages = {
--     "ts=typescript",
--     "js=javascript"
-- }

g.mapleader = " "
o.clipboard = ""
o.undofile = false
o.number = true
o.relativenumber = true

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.smartindent = true

o.wrap = false

o.swapfile = false
o.backup = false

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"

o.isfname:append "@-@"

o.updatetime = 50
-- o.colorcolumn = "160"

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
