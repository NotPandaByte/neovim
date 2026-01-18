-- ~/.config/nvim/lua/plugins.lua
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Luau LSP with Roblox support
  use 'lopi-py/luau-lsp.nvim'

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    }
  }

  -- Formatting and Linting
  use 'nvimtools/none-ls.nvim'
  use 'jay-babu/mason-null-ls.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Colorscheme
  use 'catppuccin/nvim'
end)
