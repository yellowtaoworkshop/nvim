
local indent = 2

vim.opt.shiftwidth=indent
vim.opt.tabstop = indent
vim.opt.softtabstop = indent
vim.opt.expandtab = true

vim.opt.wildmenu       = true -- tab complete on command line
vim.opt.smartcase      = true -- unless I use caps
vim.opt.hlsearch       = true -- highlight matching text
vim.opt.incsearch      = true -- update results while I type
vim.opt.number         = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true

-- vim.cmd("set background=dark")
vim.cmd("colorscheme zephyr")
-- vim.cmd("colorscheme PaperColor")
