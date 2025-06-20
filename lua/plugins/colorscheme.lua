return {
  {
    'sainnhe/everforest',
    --enabled = false,
    dependencies = {'nvim-lualine/lualine.nvim'},
    lazy = false,
    priority= 1000,
    opts = function()
      vim.opt.background = "light"
      -- vim.g.everforest_enable_italic = true
      vim.g.everforest_background = "medium"
      vim.cmd.colorscheme("everforest")
      -- set he cursor color
    end 
  },

  {
    "catppuccin/nvim", 
    name = "catppuccin", 
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = function()
      vim.opt.background = "dark"
      local opts = {
        flavour = "mocchiato",
        backgroud = {
          light = "latte",
          dark  = "frappe"
        },
      }
      vim.cmd.colorscheme("catppuccin")
      return opts
    end
  }
}
