-- ~/.config/nvim/lua/plugins/init.lua
return {
  {
    "neovim/nvim-lspconfig",
    dependencies={
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("auto-save").setup({
        enabled = true,
        debounce_delay = 500,
        execution_message = {
          enabled = false,
        },
      })
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
    }
  },
  {
    "rcarriga/nvim-notify",
    opts={
      timeout=300,
      max_width=50,
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy=false,
    -- dependencies={
      --   "windwp/nvim-ts-autotag",
      -- },
      -- event = { "BufReadPost", "BufNewFile" },
      build = ":TSUpdate",
      -- opts = {
        --   ensure_installed = {
          --     "lua",
          --     "vim",
          --     "vimdoc",
          --     "html",
          --     "css",
          --     "javascript",
          --     "typescript",
          --     "tsx",
          --     "jsx",
          --     "json",
          --     "yaml",
          --     "blade",
          --     "php",
          --     "python",
          --     "markdown",
          --     "markdown_inline",
          --     "bash",
          --     "dockerfile",
          --   },
          -- -- highlight = {
            -- --   enable = true,
            -- --   additional_vim_regex_highlighting = true,
            -- --   use_languagetree=true,
            -- -- },
            --   -- indent = {
              --   --   enable = true,
              --   -- },
              --   -- autotag = {
                --   --   enable = true,
                --   -- },
                -- },
              },
              {
                'nvimdev/dashboard-nvim',
                event = 'VimEnter',
                config = function()
                  require('dashboard').setup {}
                end,
                dependencies = { {'nvim-tree/nvim-web-devicons'}}
              },
              {
                "brenoprata10/nvim-highlight-colors",
                event = { "BufReadPost", "BufNewFile" },
                config = function()
                  require("nvim-highlight-colors").setup({
                    render = "background",
                    enable_tailwind = true,
                    virtual_symbol = "",
                    virtual_symbol_prefix = "",
                    virtual_symbol_suffix = "",
                    exclude_filetypes = {},
                  })
                end,
              },
              {
                'windwp/nvim-autopairs',
                event = "InsertEnter",
                config = true,
                opts={}
              },
            }

