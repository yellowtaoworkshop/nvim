-- vim.cmd("colorscheme tokyonight-storm")

local WA = os.getenv("WA")

if WA  then 
	vim.cmd("set tags+=$WA/tags")
end 

vim.cmd("set tags+=~/TAGS/vip_tags")
vim.cmd("set tags+=~/TAGS/uvm_tags")
