local function verible_root_dir(bufnr, on_dir)
  local root = vim.fs.root(bufnr, { '.git', 'verible.filelist', '.svls.toml' })
  if root == nil then
    local bufname = vim.api.nvim_buf_get_name(bufnr)
    if bufname == '' then
      root = vim.uv.cwd()
    else
      root = vim.fs.dirname(bufname)
    end
  end

  on_dir(root)
end

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

vim.lsp.config['verible'] = {
  cmd = { 'verible-verilog-ls' },
  filetypes = { 'systemverilog', 'verilog' },
  root_dir = verible_root_dir,
}

vim.lsp.enable('luals')
vim.lsp.enable('verible')
