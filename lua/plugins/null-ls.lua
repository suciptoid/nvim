return {
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
          -- nls.builtins.diagnostics.eslint_d,
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
