-- local autocmd = vim.api.nvim_create_autocmd
local g = vim.g
local o = vim.o

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
if g.neovide then
  o.guifont = "ComicShannsMono Nerd Font:h13"
  g.neovide_remember_window_size = true
  g.neovide_cursor_vfx_mode = "railgun"
end
