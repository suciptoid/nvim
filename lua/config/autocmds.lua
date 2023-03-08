-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- PHP PSR-12 use 4 space indentation
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "php" },
  callback = function()
    vim.opt_local.shiftwidth = 4
  end,
})
