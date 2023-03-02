 -- lualine
 require('lualine').setup { 
	 options = { theme = 'onedark' }
 }

 require'hop'.setup {

 }

 require('nvim-tree').setup {

 }

-- local cmp = require('cmp')
-- cmp.setup {
--	 sources = cmp.config.sources {
--		 { name = 'nvim_lsp' },
--		 { name = 'buffer' },
--		 { name = 'cmdline' },
--		 { name = 'path' },
--		 { name = 'dictionary' , 
--		   keyword_length = 3 ,
--		 },
--		 { name = 'ctags'},
--	 }
--
-- }
-- cmp.setup.cmdline( {'/', '?' }, {
--	 mapping = cmp.mapping.preset.cmdline(),
--	 sources = {
--		 { name = 'buffer'}
--	 }
-- })
-- cmp.setup.cmdline(':', {
--	 mapping = cmp.mapping.preset.cmdline(),
--	 sources = cmp.config.sources({
--		 { name = 'path' }
--	 }, {
--		 { name = 'cmdline' }
--	 })
-- })
--
-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Dropbox/org/refile.org',
})

local cmp = require'cmp'
cmp.setup({
	sources = {
		{ name = 'buffer' },
		{ name = 'path'   },
		{ name = 'nvim_lsp'},
		{ name = 'cmdline'},
		{ name = 'tags' }
	}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
 -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['svlangserver'].setup {
  capabilities = capabilities
}

