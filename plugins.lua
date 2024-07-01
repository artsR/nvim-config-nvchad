local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "nvchad/nvterm",
    opts = overrides.nvterm
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
    --
  -- Plugins that can be loaded from NvCommunity repo
  {
   "NvChad/nvcommunity",
   { import = "nvcommunity.motion.hop" },
   { import = "nvcommunity.folds.ufo" },
   { import = "nvcommunity.editor.symbols-outline" },
   { import = "nvcommunity.editor.treesittercontext" },
   { import = "nvcommunity.editor.rainbowdelimiters" },
   { import = "nvcommunity.diagnostics.trouble" },
  },

  -- Plugins not provided by NvChad repo
  --
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      require("nvim-surround").setup()
    end
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("noice").setup({
        lsp = {
          override = {
      --       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      --       ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = false,
          },
          hover = {
            enabled = false,
          },
          signature = {
            enabled = false,
          },
        },
        presets = {
          -- bottom_search = true,
          -- command_palette = true,
          long_message_to_split = true,
          -- inc_rename = false,
          -- lsp_doc_border = false,
        },
      })
    end
  },

  -- {
  --   "jackMort/ChatGPT.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   },
  --   config = function()
  --     require("chatgpt").setup({
  --       api_key_cmd = "echo $OPENAI_API_KEY",
  --     })
  --   end
  -- },

  {
    "PProvost/vim-ps1",
  },

}

return plugins
