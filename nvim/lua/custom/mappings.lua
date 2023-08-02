local M = {}

M.general = {
    i = {
        -- navigate within insert mode
        ["<M-h>"] = { "<Left>", "Move left" },
        ["<M-l>"] = { "<Right>", "Move right" },
        ["<M-j>"] = { "<Down>", "Move down" },
        ["<M-k>"] = { "<Up>", "Move up" },

        ["<M-w>"] = { "<Esc>ea", "Move to the end of the word" },
        ["<M-b>"] = { "<Esc>bi", "Move to the beginning f the word" },

        ["<C-h>"] = { "<C-h>", "Get the default key behavior back" },
        ["<C-l>"] = { "<C-l>", "Get the default key behavior back" },
        ["<C-j>"] = { "<C-j>", "Get the default key behavior back" },
        ["<C-k>"] = { "<C-k>", "Get the default key behavior back" },
    },

    n = {
        ["<C-c>"] = { "<C-c>", "Get the default key behavior back" },

        -- Tmux keybindings
        ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "Navigate to left window"},
        ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "Navigate to right window"},
        ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "Navigate to lower window"},
        ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "Navigate to upper window"},
    },
}

return M
