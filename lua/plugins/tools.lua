return {
  -- Fuzzy finder
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      update_focused_file = {
        enable = true,
        update_root = {
          enable = true,
        },
      },
    },
  },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
  },

  -- TODO / FIXME comment highlighting and navigation
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },

  -- Perforce integration
  {
    "ngemily/vim-vp4",
  },
}
