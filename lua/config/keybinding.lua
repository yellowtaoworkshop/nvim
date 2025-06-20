local wk = require("which-key")

wk.add ({
  { 
    "<leader>?",
    function()
      require("which-key").show({ global = false })
    end,
    desc = "Buffer Local Keymaps (which-key)",
  },

  {
    { "<leader>b", group = "Buffer", desc = "Keybinding for the Buffer operation" },
    {
      "<leader>bl", 
      function()
        --require('buffer_manager.ui').toggle_quick_menu()
        require('fzf-lua').buffers();
      end, 
      desc = "List all opened buffers"
    },
    --{
    --  "<leader>bn",
    --  function()
    --    require('buffer_manager.ui').nav_next()
    --  end, 
    --  desc = "Move to next buffer"
    --    
    --},
    --{
    --  "<leader>bp",
    --  function()
    --    require('buffer_manager.ui').nav_prev()
    --  end, 
    --  desc = "Move to previuos buffer"
    --    
    --}
  },

  {
    { "<leader>f", group = "Files", desc = "Keybinding for the File operation" },
    {
      "<leader>fwf", 
      function()
        cwd = os.getenv("WA")
        require('fzf-lua').files({cwd = cwd});
      end,
      desc = "Find a file in the current work directry"
    },
    {
      "<leader>fcp", 
      function()
        local file_path = vim.api.nvim_buf_get_name(0)
        vim.print("Coping the file path:" .. file_path .. "into the system clipborad")
        vim.cmd('let @+ =expand("%:p")')
      end,
      desc = "Copy current full path of current buffer"
    }
  },

  {
    { "<leader>/", group = "Flash Search", desc = "Keybinding group for flash plugin"},
    {
      "<leader>/s",
      function() 
        require("flash").jump()
      end,
      desc = "Basic flash jump",
      mode = { "n", "x", "o"}
    },
  },

  -- Nvim tree
  {
    { "<leader>t", group = "Nvim Tree", desc = "Nvim tree"},
    {
      "<leader>to",
      function()
        vim.cmd("NvimTreeOpen")
      end,
      desc = "Open the Nvim Tree"
    }
  },

  -- TODO comments
  {
    { "<leader>d", group = "TODO comments", desc = "TODO comments keybinding groups"},
    {
      "<leader>d]",
      function()
        require("todo-comments").jump_next({keywords = {"ERROR", "WARNING"}})
      end,
      desc = "Next error/warning todo comments"
    },
    {
      "<leader>d[",
      function()
        require("todo-comments").jump_prev({keywords = {"ERROR", "WARNING"}})
      end,
      desc = "Previous error/warning todo comments"
    }
  },
})
