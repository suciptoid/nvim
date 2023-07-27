return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "olimorris/neotest-phpunit",
      "jfpedroza/neotest-elixir",
    },
    opts = { adapters = { "neotest-elixir", "neotest-phpunit" } },
  },
}
