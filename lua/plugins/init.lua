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
    build = ":TSUpdate",
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
{
  "3rd/image.nvim",
  event = "VeryLazy",
  opts = {
    backend = "kitty",

    max_width_window_percentage = 100,
    max_height_window_percentage = 100,

    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = true,
        filetypes = { "markdown" },
      },
    },
    window_overlap_clear_enabled = true,
    editor_only_render_when_focused = true,
  },
}

}

