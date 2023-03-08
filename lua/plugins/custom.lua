return {
  -- colorscheme
  {
    "sainnhe/everforest",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
  -- Window Picker
  {
    "s1n7ax/nvim-window-picker",
    event = "VeryLazy",
    config = function()
      require("window-picker").setup()
    end,
  },
  -- Override telescope shortcut
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- Reclaim keymap from telescope
      { "<leader>/", false },
      { "<leader>fa", "<cmd>Telescope live_grep<cr>", desc = "Find in Files (Grep)" },
    },
  },
  -- Wakatime - time tracking
  {
    "wakatime/vim-wakatime",
  },
  -- Use tab as autocomplete selector
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
          -- they way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
}
