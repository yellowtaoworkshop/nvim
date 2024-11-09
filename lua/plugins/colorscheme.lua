return {
  'sainnhe/everforest',
  dependencies = {'nvim-lualine/lualine.nvim'},
  lazy = false,
  priority= 1000,
  opts = function()
    vim.opt.background = "dark"
    -- vim.g.everforest_enable_italic = true
    vim.g.everforest_background = "hard"
    vim.cmd.colorscheme("everforest")
    -- set he cursor color
  end
}
