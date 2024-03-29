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

-- Show line diagnostic when hovering
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

-- Detach ufo on neotree, not work yet
-- https://github.com/kevinhwang91/nvim-ufo/issues/33#issuecomment-1172831823
vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree",
  callback = function()
    vim.opt_local.foldenable = false
  end,
})
