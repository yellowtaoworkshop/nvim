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

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  {
    'j-morano/buffer_manager.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    lazy = "eryLazy",
    opts = {
    },
  }
}

