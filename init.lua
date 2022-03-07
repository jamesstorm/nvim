vim.g.mapleader = " "

vim.opt.relativenumber = true
vim.opt.errorbells = false
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = "/home/james/.config/nvim/undodir"
vim.opt.incsearch = true
vim.opt.colorcolumn = "80"
vim.cmd("highlight ColorColumn ctermbg=0 guibg=lightgrey")
vim.cmd("highlight Cursor guifg=white guibg=black")
vim.cmd("highlight iCursor guifg=white guibg=steelblue")
vim.cmd("set guicursor=n-v-c:block-Cursor")
vim.cmd("set guicursor+=i:ver100-iCursor")
vim.cmd("set guicursor+=n-v-c:blinkon0")
vim.cmd("set guicursor+=i:blinkwait10")
--
require('packer').startup(function()
use 'wbthomason/packer.nvim'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use 'onsails/lspkind-nvim'
--use 'vim-airline/vim-airline'
--use 'vim-airline/vim-airline-themes'
use 'nvim-treesitter/nvim-treesitter'
use 'nvim-lua/plenary.nvim'
use 'lewis6991/gitsigns.nvim'
use 'nvim-telescope/telescope.nvim'
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use 'preservim/nerdtree'
use 'ThePrimeagen/harpoon'
end)

require('jamesstorm/lsp')
require('jamesstorm/treesitter')
require('jamesstorm/gitsigns')
require('jamesstorm/lualine')

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})
