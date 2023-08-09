local M = {}

M.treesitter = {
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    use_languagetree = true,
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
    -- bash stuff
    "bash-language-server",

    -- python stuff
    "pyright", -- lsp
    "ruff", -- linter
    "black", -- auto formatter

    -- rust stuff
    "rust-analyzer",

    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "typescript-language-server",
    "css-lsp",
    "html-lsp",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- blockchain stuff
    -- "solang", -- hyperledger's solidity language server, (it doesn't implement autocompletion)
    "solidity-ls",
  },
}

-- cmp key bindings
M.cmp_mappings = {
  -- Accept currently selected item.
  -- Set `select` to `false` to only confirm explicitly selected items.
  ["<CR>"] = require("cmp").mapping.confirm { select = true },
  ["<C-j>"] = require("cmp").mapping.select_next_item(),
  ["<C-k>"] = require("cmp").mapping.select_prev_item(),
  ["<C-s>"] = require("cmp").mapping.abort(),

  -- -- Shift-Enter to confirm selection
  -- -- in order for this to be working,
  -- -- you need to put the following to your kitty.conf
  -- -- map shift+enter send_text all \x1b[13;2u
  -- -- See the link below for more information
  -- -- https://stackoverflow.com/questions/16359878/how-to-map-shift-enter
  -- ["<S-CR>"] = require("cmp").mapping.confirm { select = true },
}

M.nvimtree = {
  -- Because nvimtree hijacks netrw as a default option, we are letting netrw run together with nvimtree
  disable_netrw = false,
  hijack_netrw = false,

  -- git support in nvimtree
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

return M
