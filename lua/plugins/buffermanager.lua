require("buffer_manager").setup({ })
local bmui = require("buffer_manager.ui")
local map = vim.keymap.set
map({ 't', 'n' }, '<M-m>', bmui.toggle_quick_menu, opts)
