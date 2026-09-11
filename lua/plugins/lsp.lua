return {
  -- LSP server definitions library (verible, luals, ... auto-loaded from its lsp/ dir).
  -- Actual server enablement lives in lua/config/lsp.lua.
  {
    "neovim/nvim-lspconfig",
  },

  -- Installer for LSP servers / tools
  {
    "williamboman/mason.nvim",
    lazy = false,
    priority = 999,
    opts = {},
  },
}
