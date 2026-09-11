return {
  -- Treesitter: syntax-aware highlighting, indentation, textobjects
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "VeryLazy" },
    opts = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "verilog", "markdown", "markdown_inline", "python" },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = { "lua", "verilog", "python" },
          disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "VeryLazy",
    enabled = true,
  },

  {
    "echasnovski/mini.ai",
    version = "*",
    opts = {},
  },

  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    opts = function()
      require("luasnip.loaders.from_vscode").lazy_load("~/.local/share/nvim/lazy/friendly-snippets/snippets")
    end,
  },

  -- Completion
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
      { "rafamadriz/friendly-snippets" },
      { "L3MON4D3/LuaSnip", version = "v2.*" },
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = "default" },
      appearance = {
        nerd_font_variant = "mono",
      },
      snippets = { preset = "luasnip" },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      completion = {
        ghost_text = {
          enabled = true,
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
        menu = {
          auto_show = true,
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind" },
            },
          },
        },
        keyword = {
          range = "full",
        },
        accept = {
          auto_brackets = { enabled = false },
        },
        list = { selection = { preselect = false, auto_insert = true } },
      },
    },
    opts_extend = { "sources.default" },
  },
}
