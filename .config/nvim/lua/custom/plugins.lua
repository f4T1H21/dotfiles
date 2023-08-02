local overrides = require("custom.configs.overrides")

local plugins = {
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "pyright",
                "rust_analyzer",
                "clangd",
                "typescript-language-server",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },
}

return plugins
