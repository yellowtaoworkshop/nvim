-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- lsp config
	use 'neovim/nvim-lspconfig'

	use 'tamago324/nlsp-settings.nvim'
  -- -- Simple plugins can be specified as strings
  -- use 'rstacruz/vim-closer'

  -- -- Lazy loading:
  -- -- Load on specific commands
  -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- -- Load on an autocommand event
  -- use {'andymass/vim-matchup', event = 'VimEnter'}

  -- -- Load on a combination of conditions: specific filetypes or commands
  -- -- Also run code after load (see the "config" key)
  -- use {
  --   'w0rp/ale',
  --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
  --   cmd = 'ALEEnable',
  --   config = 'vim.cmd[[ALEEnable]]'
  -- }

  -- -- Plugins can have dependencies on other plugins
  -- use {
  --   'haorenW1025/completion-nvim',
  --   opt = true,
  --   requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  -- }

  -- -- Plugins can also depend on rocks from luarocks.org:
  -- use {
  --   'my/supercoolplugin',
  --   rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
  -- }
  --
  -- Plugins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  
  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use 'marko-cerovac/material.nvim'


  -- tokyonight colorscheme
  use {'folke/tokyonight.nvim'}

	use "EdenEast/nightfox.nvim"

	use "rakr/vim-one"

  use {'kyazdani42/nvim-web-devicons'}
  -- status line
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

	use {
		'nvim-tree/nvim-tree.lua'
	}

	use 'glepnir/zephyr-nvim' 

	-- completion 
	-- use {'neoclide/coc.nvim', branch = 'release'}

	-- EasyMotion

	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
	}

	use {'hrsh7th/nvim-cmp'}
	use {'hrsh7th/cmp-cmdline'}
	use {'hrsh7th/cmp-path'}
	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'delphinus/cmp-ctags'}
	use {'octaltree/cmp-look'}
	use {'uga-rosa/cmp-dictionary'}
	
	
	use "nvim-orgmode/orgmode"


end)
