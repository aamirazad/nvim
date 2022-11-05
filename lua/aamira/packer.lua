vim.cmd [[packadd packer.nvim]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
 return require('packer').startup(function()
  -- Packer can manage itself
  use { "wbthomason/packer.nvim" }
  use 'wakatime/vim-wakatime'
  use 'folke/tokyonight.nvim'
  use {
  "max397574/better-escape.nvim",
  config = function()
    require("better_escape").setup()
  end,
}
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  use 'ThePrimeagen/vim-be-good'
end)
