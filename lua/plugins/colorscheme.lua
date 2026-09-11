return {
    {
        "Mofiqul/adwaita.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        config = function()
            vim.opt.background = "light"
            vim.cmd.colorscheme("adwaita")
        end,
    },

    {
        "sainnhe/everforest",
        dependencies = { "nvim-lualine/lualine.nvim" },
        lazy = false,
        enabled = false,
        priority = 1000,
        opts = function()
            vim.opt.background = "light"
            vim.g.everforest_background = "medium"
            vim.cmd.colorscheme("everforest")
        end,
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        enabled = false,
        priority = 1000,
        opts = function()
            vim.opt.background = "dark"
            local opts = {
                flavour = "mocha",
                backgroud = {
                    light = "latte",
                    dark = "frappe",
                },
            }
            vim.cmd.colorscheme("catppuccin")
            return opts
        end,
    },

    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        enabled = false,
        config = function()
            require("kanagawa").setup({
                compile = false,
                undercurl = true,
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,
                dimInactive = false,
                terminalColors = true,
                colors = {
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function()
                    return {}
                end,
                theme = "dragon",
                background = {
                    dark = "wave",
                    light = "lotus",
                },
            })
            vim.cmd("colorscheme kanagawa-wave")
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = function()
            local opts = {}
            vim.opt.background = "dark"
            vim.cmd.colorscheme("tokyonight-moon")
            return opts
        end,
    },

    {
        "sainnhe/edge",
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("edge")
        end,
    },

    {
        "phha/zenburn.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("zenburn")
        end
    },
    {
        "yellowtaoworkshop/apropospriate.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        -- enabled = false,
        -- config = function()
        --     vim.opt.background = "dark"
        --     vim.cmd.colorscheme("apropospriate")
        -- end
    },
    {
        "olimorris/onedarkpro.nvim",
        enabled = false,
        lazy = false,
        priority = 1000, -- Ensure it loads first"
        config = function()
            vim.cmd.colorscheme("onedark")
        end
    },
    {
        "Mofiqul/dracula.nvim",
        enabled = false,
        lazy = false,
        priority = 1000, -- Ensure it loads first"
        config = function()
            vim.cmd.colorscheme("dracula")
        end
    },








}
