return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {

        sources = {
          -- JS Stuff
          nls.builtins.formatting.prettierd.with({
            condition = function(utils)
              return utils.root_has_file({ ".prettierrc", "prettier.config.js", ".prettierrc.js" })
            end,
          }),
          nls.builtins.formatting.eslint_d.with({
            condition = function(utils)
              return utils.root_has_file({ ".eslintrc", ".eslintrc.json", ".eslintrc.js" })
            end,
          }),
          nls.builtins.code_actions.eslint_d.with({
            condition = function(utils)
              return utils.root_has_file({ ".eslintrc", ".eslintrc.json", ".eslintrc.js" })
            end,
          }),
          -- nls.builtins.diagnostics.eslint_d,
          -- Lua stuff
          nls.builtins.formatting.stylua,
        },
      }
    end,
  },
}
