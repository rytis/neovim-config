-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")
require("keymaps")
require("plugins")
require("plugins.lualine")
require("plugins.nvimtree")

