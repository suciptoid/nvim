
-- stylua: ignore
-- if true then return {} end

return {
  {
    "kevinhwang91/nvim-ufo",
    event = "BufRead",
    dependencies = {
      { "kevinhwang91/promise-async" },
    },
    config = function()
      require('ufo').setup()

    end,
  },
}
