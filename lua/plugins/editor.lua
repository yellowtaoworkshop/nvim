return {

  -- Align
  {
    'junegunn/vim-easy-align',
    cmd = 'EasyAlign',
  },

  -- substitude
  {
    "tpope/vim-abolish",
    --event = "VeryLazy",
  },

  -- motion
  {
    'phaazon/hop.nvim',
    --event = "VeryLazy",
    opts = {},
  },

  -- perforce
  {
    'ngemily/vim-vp4',
    --event = "VeryLazy",
  },

  {
    "kylechui/nvim-surround",
    --event = "VeryLazy",
    opts = {},
  },

  -- auto-pair
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  -- buffer managerment
  {
    'j-morano/buffer_manager.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    lazy = "VeryLazy",
    keys = {
      {
        "<leader>bl", 
        function()
          require('buffer_manager.ui').toggle_quick_menu()
        end, 
        desc = "buffer managerment"}
    },
    opts = {
    },
  },
  --- which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }

}

