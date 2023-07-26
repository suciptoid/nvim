return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      -- increase timeout
      format = { timeout_ms = 10000 },
    },
  },
  -- Language Server
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "emmet-ls",
        "eslint_d",
        "prettierd",
        "intelephense",
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
        "css",
      },
    },
  },
}
