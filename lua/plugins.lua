-- install Lazy package manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins

require("lazy").setup({
    --
    -- NVIM TREE file browser
    --
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    --
    -- NIGHTFOX colourscheme
    --
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme carbonfox]])
        end,
    },
    --
    -- LUALine status line
    --
    {
        "nvim-lualine/lualine.nvim"
    },
    --
    -- Telescope
    --
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    --
    -- WhichKey key mapper
    --
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    --
    -- ToggleTerm terminal
    --
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true
    },
    --
    -- LSPZero LSP configuration
    --
    {
      {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

      --- Uncomment these if you want to manage LSP servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {
        'neovim/nvim-lspconfig',
        dependencies = {
          {'hrsh7th/cmp-nvim-lsp'},
        },
      },

      -- Autocompletion
      {
        'hrsh7th/nvim-cmp',
        dependencies = {
          {'L3MON4D3/LuaSnip'},
        }
      }
    },
    --
    -- Buffer manager
    --
    {
      'j-morano/buffer_manager.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
})
