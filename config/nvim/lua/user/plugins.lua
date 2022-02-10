local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() require'nvim-tree'.setup {} end
  }
  use {
    "folke/which-key.nvim",
    config = function() require("which-key").setup {} end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('telescope').setup {} end
  }
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup {} end
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup {} end
  }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
