return {
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
        "css",
      },
    },
  },
}
