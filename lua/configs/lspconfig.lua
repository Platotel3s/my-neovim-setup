-- ~/.config/nvim/lua/configs/lspconfig.lua
-- NvChad default LSP settings
require("nvchad.configs.lspconfig").defaults()

-----------------------------------------------------------
-- Common on_attach
-----------------------------------------------------------
local on_attach = function(client, bufnr)
  if client.server_capabilities then
    client.server_capabilities.documentFormattingProvider = false
  end
end
-----------------------------------------------------------
-- HTML
-----------------------------------------------------------
vim.lsp.config.html = {
  on_attach = on_attach(),
  filetypes = {
    "html",
    "blade",
    "blade.php",
    "javascriptreact",
    "typescriptreact",
  },
}
vim.lsp.enable("html")

-----------------------------------------------------------
-- CSS
-----------------------------------------------------------
vim.lsp.config.cssls = {
  on_attach = on_attach(),
  filetypes = {
    "css",
    "scss",
    "less",
    -- "html",
    -- "blade",
    -- "javascriptreact",
    -- "typescriptreact",
  },
}
vim.lsp.enable("cssls")

-----------------------------------------------------------
-- TailwindCSS
-----------------------------------------------------------
vim.lsp.config.tailwindcss = {
  on_attach = on_attach(),
  filetypes = {
    "html",
    "blade",
    "blade.php",
    "javascriptreact",
    "typescriptreact",
    "vue",
  },
  init_options = {
    userLanguages = {
      blade = "html",
      ["blade.php"] = "html",
    },
  },
}
vim.lsp.enable("tailwindcss")

-----------------------------------------------------------
-- PHP: Intelephense
-----------------------------------------------------------
vim.lsp.config.intelephense = {
  on_attach = on_attach(),
  settings = {
    intelephense = {
      diagnostics = {
        undefinedTypes = false,
        filetypes={
          "php",
          "blade"
        }
      },
    },
  },
}
vim.lsp.enable("intelephense")

-----------------------------------------------------------
-- Laravel Language Server
-----------------------------------------------------------
vim.lsp.config.laravel_ls = {
  on_attach = on_attach(),
  filetypes={
    "php"
  }
}
vim.lsp.enable("laravel_ls")

-----------------------------------------------------------
-- Python: Pyright
-----------------------------------------------------------
vim.lsp.config.pyright = {
  on_attach = on_attach(),
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPath = true,
        useLibraryCodeForType = true,
        diagnosticMode = "workspace",
      },
    },
  },
}
vim.lsp.enable("pyright")

-----------------------------------------------------------
-- TypeScript / JavaScript
-----------------------------------------------------------
vim.lsp.config.ts_ls = {
  on_attach = on_attach(),
  filetypes = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    -- "js",
    -- "ts",
    -- "jsx",
    -- "tsx",
  },
}
vim.lsp.enable("ts_ls")

--------------------------------------------------------
-- CPP & C
--------------------------------------------------------
vim.lsp.config.clangd={
  on_attach=on_attach(),
  filetypes={
    "c",
    "cpp"
  },
}
vim.lsp.enable("clangd")

--------------------------------------------------------
-- RUST
--------------------------------------------------------
vim.lsp.config.ast_grep = {
  cmd = { "ast-grep", "lsp" },
  filetypes = { "rs" },
  root_dir = vim.fs.root(0, {
    ".git",
    "Cargo.toml",
  }),
  on_attach = on_attach(),
}
vim.lsp.enable("ast_grep")


------------------------------------------------------
-- LUA
------------------------------------------------------
vim.lsp.lua_ls={
  on_attach=on_attach(),
  filetypes={
    "lua"
  }
}
vim.lsp.enable("lua_ls")

vim.lsp.dartls={
  on_attach=on_attach(),
  filetypes={
    "dart"
  }
}
vim.lsp.enable("dartls")
