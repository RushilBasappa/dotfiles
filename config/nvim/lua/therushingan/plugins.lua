local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local status, packer = pcall(require, "packer")
if not status then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end
  }
}

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Dependencies
  use { 'nvim-lua/plenary.nvim' } -- diffview, gitsigns, telescope
  use { 'kyazdani42/nvim-web-devicons' } -- nvim-tree, bufferline
  use { 'neovim/nvim-lspconfig' } -- nvim-lsp-installer, nvim-cmp

  -- ColorSchemes
  use 'EdenEast/nightfox.nvim'

  -- Nvim Tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require('nvim-tree').setup {} end
  }

  -- Which Key
  use "folke/which-key.nvim"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require('telescope').setup {} end
  }

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup {} end
  }

  -- GitSigns
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup {} end
  }
  use { 'sindrets/diffview.nvim' }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Base64 converter
  use 'christianrondeau/vim-base64'

  -- LSP & CMP
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    }
  }

  -- LSP installer
  use { 'williamboman/nvim-lsp-installer' }

  -- Illuminate - Highlight similar words
  use { "RRethy/vim-illuminate" }

  -- auto close brackets, etc.
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup { map_cr = true } end
  }

  use {
    "akinsho/bufferline.nvim",
    config = function() require("bufferline").setup {} end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
