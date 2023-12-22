---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>sl"] = { "<CMD>SymbolsOutline<CR>", "Toggle list of symbols", opts = { nowait = true } },
    [",w"] = { "/[A-Z]<CR><CMD>nohlsearch<CR>", "go to the next camelCase", opts = {} },
  },

  v = {
    [">"] = { ">gv", "indent"},
  },

  o = {
    [",w"] = { "/\\u<CR>", "go to the next camelCase when waiting for movement key"},
  },
}

-- more keybinds!

return M
