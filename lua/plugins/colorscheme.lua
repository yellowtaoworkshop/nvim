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

  --{
  --  "catppuccin/nvim", 
  --  name = "catppuccin", 
  --  enabled = false,
  --  priority = 1000,
  --  opts = function()
  --    vim.opt.background = "dark"
  --    local opts = {
  --      flavour = "auto",
  --      backgroud = {
  --        light = "latte",
  --        darl  = "mocha"
  --      }
  --    }
  --    vim.cmd.colorscheme("catppuccin")
  --    return opts
  --  end
  --}
}
