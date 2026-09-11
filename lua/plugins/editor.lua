return {
  -- Alignment
  {
    "junegunn/vim-easy-align",
    cmd = "EasyAlign",
  },

  -- Substitution / coercion (crs, crc, ...)
  {
    "tpope/vim-abolish",
  },

  -- Motion / jump
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- Surround (add/change/delete surrounding pairs)
  {
    "kylechui/nvim-surround",
    opts = {},
  },

  -- Auto-pairs
  {
    "yellowtaoworkshop/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- Buffer management
  {
    "j-morano/buffer_manager.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = "VeryLazy",
    opts = {},
  },

  -- Keybinding hints
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
