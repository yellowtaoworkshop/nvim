--local lspconfutil = require 'lspconfig/util'
--local root_pattern = lspconfutil.root_pattern("veridian.yml", ".git", "bootenv")
vim.lsp.config["veridian"] = {
  cmd = { 'veridian' },
  filetypes = { 'systemverilog', 'verilog' },
  root_markers = { '.git', 'bootenv' },
  --root_dir = function(fname)
  --  local filename = lspconfutil.path.is_absolute(fname) and fname or lspconfutil.path.join(vim.loop.cwd(), fname)
  --  return root_pattern(filename) or lspconfutil.path.dirname(filename)
  --end
}

vim.lsp.config['luals'] = {
  -- Command and arguments to start the server.
  cmd = { 'lua-language-server' },
  -- Filetypes to automatically attach to.
  filetypes = { 'lua' },
  -- Sets the "root directory" to the parent directory of the file in the
  -- current buffer that contains either a ".luarc.json" or a
  -- ".luarc.jsonc" file. Files that share a root directory will reuse
  -- the connection to the same LSP server.
  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  -- Specific settings to send to the server. The schema for this is
  -- defined by the server. For example the schema for lua-language-server
  -- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
}

vim.lsp.enable('luals')
vim.lsp.enable('veridian')
