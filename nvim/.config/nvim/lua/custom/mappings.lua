---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<C-c>"] = { "<Esc>", "In order to apply changes in vertical editing mode" },

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
    ["<leader>pv"] = { vim.cmd.Ex, "Open Ranger" },
    ["<C-c>"] = { "<C-c>", "Get the default key behavior back" },

    ["<leader>pt"] = { "<leader>pt", "Get the default key behavior back" },

    ["n"] = { "nzzzv", "Center and highlight the line of the next search result" },
    ["N"] = { "Nzzzv", "Center and highlight the line of the previous search result" },

    ["<leader>e"] = { ":NvimTreeToggle<CR>", "Toggle nvim tree" },
    ["<C-n>"] = { ":NvimTreeFocus<CR>", "Focus to nvim tree" },

    ["x"] = { [["_x]], "Delete one character without yanking" },
    ["d"] = { [["_d]], "Just Delete" },
    ["<leader>d"] = { "d", "Delete with yanking" },

    -- Tmux keybindings
    ["<C-f>"] = { "<cmd>silent !tmux neww tmux-sessionizer<CR>", "" },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Navigate to left window" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Navigate to right window" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Navigate to lower window" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Navigate to upper window" },

    ["<leader>f"] = { vim.lsp.buf.format, "Format the code" },

    ["J"] = { "mzJ`z", "make cursor stay in its place while line-after-line putting" },
    ["<C-d>"] = { "<C-d>zz", "Make cursor centered while C-d" },
    ["<C-u>"] = { "<C-u>zz", "Make cursor centered while C-u" },

    ["<leader>s"] = {
      [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
      "Replace the word under the cursor in all its occurrences",
    },

    -- Eandrju/cellular-automaton.nvim
    ["<leader>rr"] = { "<cmd>CellularAutomaton make_it_rain<CR>", "Rain animation" },

    -- ["<C-k>"] = { "<cmd>cnext<CR>zz", "" },
    -- ["<C-j>"] = { "<cmd>cprev<CR>zz", "" },
    -- ["<leader>k"] = { "<cmd>lnext<CR>zz", "" },
    -- ["<leader>j"] = { "<cmd>lprev<CR>zz", "" },
  },

  v = {
    ["x"] = { [["_x]], "Delete one character without yanking" },
    ["d"] = { [["_d]], "Just delete" },
    ["<leader>d"] = { "d", "Delete with yanking" },
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },
}

return M
