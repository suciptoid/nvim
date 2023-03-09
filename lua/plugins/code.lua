return {
  -- Codeium - copilot alternative
  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
    keys = function()
      vim.keymap.set("i", "<Tab>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<c-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true })
      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true })
    end,
  },
  -- Builtin lsp config
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },
  -- Language Server
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "emmet-ls",
        "intelephense",
        "prettierd",
        "eslint_d",
        "php-cs-fixer",
        "vue-language-server",
        "tailwindcss-language-server",
        "prisma-language-server",
      },
    },
  },
  -- Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "vue",
        "php",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      -- increase timeout
      format = { timeout_ms = 9000 },
    },
  },
  -- Additional Language server formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {

        sources = {
          -- JS Stuff
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.eslint_d,
          nls.builtins.code_actions.eslint_d,
          nls.builtins.diagnostics.eslint_d,
          -- Lua stuff
          nls.builtins.formatting.stylua,
          -- PHP stuff (no longer need this, since intelephense configured properly with shiftwidth=4)
          -- nls.builtins.diagnostics.phpcs,
          -- nls.builtins.formatting.phpcsfixer,
        },
      }
    end,
  },
}
