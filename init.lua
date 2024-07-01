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
  g.neovide_cursor_animate_command_line = true
  g.neovide_cursor_vfx_mode = "railgun"
  g.neovide_cursor_vfx_particle_lifetime = 2.0 -- 1.2
  g.neovide_cursor_vfx_particle_density = 10.0 -- 7.0
end
