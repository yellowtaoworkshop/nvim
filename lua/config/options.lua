
vim.g.loaded_netrw = 1
vim.g.loaded_nerwwPlugin = 1

local indent = 4

vim.opt.shiftwidth  =indent
vim.opt.tabstop     = indent
vim.opt.softtabstop = indent
vim.opt.expandtab   = true

vim.opt.wildmenu       = true -- tab complete on command line
vim.opt.smartcase      = true -- unless I use caps
vim.opt.hlsearch       = true -- highlight matching text
vim.opt.incsearch      = true -- update results while I type
vim.opt.number         = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true

-- leader key setting
vim.g.mapleader       = ","
vim.g.maplocalleader  = "\\"

-- TAGS 

-- clipbord setting
local is_in_tmux = os.getenv("TMUX")
if is_in_tmux ~= nil then 
  vim.g.clipboard       = "tmux"
end
