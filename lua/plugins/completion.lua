return {
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    opts = function()
      require("luasnip.loaders.from_vscode").lazy_load('~/.local/share/nvim/lazy/friendly-snippets/snippets')
    end
  },

  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    -- build = '',
    dependencies = {
      {'rafamadriz/friendly-snippets'},
      { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    },

    -- use a release tag to download pre-built binaries
    -- version = '1.*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- See the full "keymap" documentation for information on defining your own keymap.
      keymap = { preset = 'default' },

      appearance = {
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
      },

      snippets = { preset = 'luasnip'  },

      sources = {
        default = { 'lsp', 'path', 'snippets', "buffer" },
      },

      completion = {
        ghost_text = {
          enabled = true,
        },
        documentation = {
          auto_show = true,
          auto_show_delays = 500,
        },
        menu = {
          auto_show = true, -- only show menu on manual <C-space>
          -- nvim-cmp style menu
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind" }
            },
          }
        },
        -- 'prefix' will fuzzy match on the text before the cursor
        -- 'full' will fuzzy match on the text before _and_ after the cursor
        -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'lw
        keyword = {
          range = 'full',
        },
        accept = {
          auto_brackets = {enabled = false},
        },
        list = { selection = { preselect = false, auto_insert = true } },
      }
    },
    opts_extend = { "sources.default" }
  },
}

