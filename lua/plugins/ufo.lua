
-- stylua: ignore
-- if true then return {} end

return {
  {
    "kevinhwang91/nvim-ufo",
    event = "BufReadPost",
    dependencies = {
      { "kevinhwang91/promise-async" },
    },
    config = function()
      -- Fold options
      vim.o.foldcolumn = "0" -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      require('ufo').setup({
          provider_selector = function()
              return {'treesitter', 'indent'}
          end
      })

    end,
  },
}
