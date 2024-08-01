-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
--   renderer = {
--     group_empty = true,
--     icons = {
--       show = {
--         file = false,
--         folder = false,
-- --        folder_arrow = false,
--         git = false,
--       }
--     }
--   },
  filters = {
    custom = {
      "^.git$",
    },
    -- dotfiles = true,
  },
  git = {
    ignore = false
  }
})


local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
