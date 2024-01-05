local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'neovim/nvim-lspconfig' -- LSP
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-vsnip' -- added for elixir ls
  use 'hrsh7th/vim-vsnip' -- added for elixir ls
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'MunifTanjim/eslint.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use { 'mhanberg/elixir.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use {
    'kkharji/xbase',
    ft = { 'xbase' },
  }
  use {
    'xbase-lab/xbase',
    run = 'make install', -- or "make install && make free_space" (not recommended, longer build time)
    requires = {
      "neovim/nvim-lspconfig",
      -- "nvim-telescope/telescope.nvim", -- optional
      -- "nvim-lua/plenary.nvim", -- optional/requirement of telescope.nvim
      -- "stevearc/dressing.nvim", -- optional (in case you don't use telescope but something else)
    },
    config = function()
      require 'xbase'.setup({}) -- see default configuration bellow
    end
  }
end)
