-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Fold display
function _G.custom_fold_text()
  local line = vim.fn.getline(vim.v.foldstart)

  local line_count = vim.v.foldend - vim.v.foldstart + 1

  return string.format("%s ... %s more line", line, line_count)
end

-- Custom fold text display
vim.opt.foldtext = "v:lua.custom_fold_text()"

-- Fill end of buffer & fold text to blank space
vim.opt.fillchars = { eob = " ", fold = " " }
