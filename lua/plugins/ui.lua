return {
  -- noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },

  -- dashboard
  {
    "nvimdev/dashboard-nvim",
    event = 'VimEnter',
    opts = function()
      local logo = [[
      ░██████╗░░█████╗░██╗░░░██╗██╗███╗░░██╗     ❤   
      ██╔════╝░██╔══██╗██║░░░██║██║████╗░██║       ❤ 
      ██║░░██╗░███████║╚██╗░██╔╝██║██╔██╗██║    😘   
      ██║░░╚██╗██╔══██║░╚████╔╝░██║██║╚████║ 🐝      
   😍 ╚██████╔╝██║░░██║░░╚██╔╝░░██║██║░╚███║         
     ░ ╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░╚══╝         
      ]]


      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          -- stylua: ignore
          center = {
            { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
            { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
            { action = 'lua LazyVim.pick("oldfiles")()',                 desc = " Recent Files",    icon = " ", key = "r" },
            { action = 'lua LazyVim.pick("live_grep")()',                desc = " Find Text",       icon = " ", key = "g" },
            { action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
            { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
            { action = "LazyExtras",                                     desc = " Lazy Extras",     icon = " ", key = "x" },
            { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
            { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- open dashboard after closing lazy
      if vim.o.filetype == "lazy" then
        vim.api.nvim_create_autocmd("WinClosed", {
          pattern = tostring(vim.api.nvim_get_current_win()),
          once = true,
          callback = function()
            vim.schedule(function()
              vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
            end)
          end,
        })
      end

      return opts
    end,
  },

  --- rainbow delimiters 
  {
    'HiPhish/rainbow-delimiters.nvim',
  },

  --- indentblankline
  {
    "lukas-reineke/indent-blankline.nvim",
    main  = "ibl",
    dependencies = { "HiPhish/rainbow-delimiters.nvim" },
    opts = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require "ibl.hooks"
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed"    , { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow" , { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue"   , { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange" , { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen"  , { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet" , { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan"   , { fg = "#56B6C2" })
      end)
      
      vim.g.rainbow_delimiters = { highlight = highlight }

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

      local opts = { 
        indent =  { highlight = highlight, char = "⏐" }, 
        scope  =  { enabled   = true                  },
        exclude = { filetypes   = {"dashboard"}       }
      }
      return opts 
    end
  }, 

  -- bufferline
  {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        numbers = "ordinal",
        separator_style = "slant",
        indicator = {
          icon = "🐝",
          style = "icon"
        }
      }
    }
  }
}


