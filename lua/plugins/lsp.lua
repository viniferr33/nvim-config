return {
    -- lsp functionality for mason, add dependencies to configure the servers
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim", -- automatically install everything that is not a language server
    },
    config = function()
      -- import mason
      local mason = require("mason")
  
      -- import mason-lspconfig
      local mason_lspconfig = require("mason-lspconfig")
  
      local mason_tool_installer = require("mason-tool-installer")
  
      -- enable mason and configure icons
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
  
      mason_lspconfig.setup({
        -- list of servers for mason to install
        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "svelte",
          "lua_ls",
          "graphql",
          "emmet_ls",
          "prismals",
          "ruff_lsp",
          "gopls",
        },
      })
  
      mason_tool_installer.setup({
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "ruff", -- python formatter
          "eslint_d",
          "mypy",
        },
      })
    end,
  }