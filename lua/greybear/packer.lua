-- ~/.config/nvim/lua/plugins.lua (example)

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- super maven
  use {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({})
    end,
  }

  use('theprimeagen/harpoon')

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Optional: fuzzy finder extension
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- Optional: Packer integration for Telescope
  use 'nvim-telescope/telescope-packer.nvim'
end)

