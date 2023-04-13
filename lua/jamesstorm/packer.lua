return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
      config = function()
          require("nvim-tree").setup {}
      end
  }

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      }
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use("nvim-treesitter/nvim-treesitter-context");
  use("tpope/vim-fugitive")


  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
  }
}


--  use {
--	  'VonHeikemen/lsp-zero.nvim',
--	  requires = {
--		  -- LSP Support
--		  {'neovim/nvim-lspconfig'},
--		  {'williamboman/mason.nvim'},
--		  {'williamboman/mason-lspconfig.nvim'},
--
--		  -- Autocompletion
--		  {'hrsh7th/nvim-cmp'},
--		  {'hrsh7th/cmp-buffer'},
--		  {'hrsh7th/cmp-path'},
--		  {'saadparwaiz1/cmp_luasnip'},
--		  {'hrsh7th/cmp-nvim-lsp'},
--		  {'hrsh7th/cmp-nvim-lua'},
--
--		  -- Snippets
--		  {'L3MON4D3/LuaSnip'},
--		  -- Snippet Collection (Optional)
--		  {'rafamadriz/friendly-snippets'},
--	  }
--  }

end)


