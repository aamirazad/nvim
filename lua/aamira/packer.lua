vim.cmd [[packadd packer.nvim]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
 return require('packer').startup(function()
  -- Packer can manage itself
  use { "wbthomason/packer.nvim" }
  use 'lewis6991/impatient.nvim'
  use 'wakatime/vim-wakatime'
  use 'nvim-lua/plenary.nvim'
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
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use 'nvim-telescope/telescope.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'ThePrimeagen/harpoon'
  use { 'ms-jpq/coq_nvim', branch = 'coq'}
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts'}
  use 'github/copilot.vim'
end)
