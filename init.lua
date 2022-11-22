require('craftzdog.base')
require('craftzdog.highlights')
require('craftzdog.maps')
require('craftzdog.plugins')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('craftzdog.macos')
end
if is_win then
  require('craftzdog.windows')
end
