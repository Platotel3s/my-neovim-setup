-- ~/.config/nvim/lua/configs/conform.lua
local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript={"prettier"},
    typescript={"prettier"},
    python={"pyright"},
    blade={"blade-formatter"},
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
