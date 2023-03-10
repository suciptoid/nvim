-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Fold display
-- function _G.custom_fold_text()
--   local line = vim.fn.getline(vim.v.foldstart)
--
--   local line_count = vim.v.foldend - vim.v.foldstart + 1
--
--   return string.format("%s ... %s more line", line, line_count)
-- end
--
-- -- Custom fold text display
-- vim.opt.foldtext = "v:lua.custom_fold_text()"
--
-- -- Fill end of buffer & fold text to blank space
-- vim.opt.fillchars = { eob = " ", fold = " " }

-- Fold options
vim.o.foldcolumn = "0" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
