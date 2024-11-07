return {
  'sainnhe/everforest',
  dependencies = {'nvim-lualine/lualine.nvim'},
  lazy = false,
  priority= 1000,
  opts = function()
    vim.opt.background = "light"
    -- vim.g.everforest_enable_italic = true
    vim.g.everforest_background = "hard"
    vim.cmd.colorscheme("everforest")
  end
}
