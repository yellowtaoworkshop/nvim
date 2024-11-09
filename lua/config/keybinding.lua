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
        require('buffer_manager.ui').toggle_quick_menu()
      end, 
      desc = "List all opened buffers"
    },
  }
})
