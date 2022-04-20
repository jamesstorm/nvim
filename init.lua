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
vim.opt.undodir = os.getenv( "HOME" ) .. '/undodir'
vim.opt.incsearch = true
vim.opt.colorcolumn = "80"
vim.cmd("highlight ColorColumn ctermbg=0 guibg=lightgrey")
vim.cmd("highlight Cursor guifg=white guibg=black")
vim.cmd("highlight iCursor guifg=white guibg=steelblue")
vim.cmd("set guicursor=n-v-c:block-Cursor")
vim.cmd("set guicursor+=i:ver100-iCursor")
vim.cmd("set guicursor+=n-v-c:blinkon0")
vim.cmd("set guicursor+=i:blinkwait10")




require('packer').startup(function()
    use 'sbdchd/neoformat'
    use 'sindrets/diffview.nvim'
    use 'stevearc/aerial.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind-nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-lua/plenary.nvim'
    use 'lewis6991/gitsigns.nvim'
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

vim.cmd "let g:neoformat_enabled_html = ['htmlbeautify']"

require('jamesstorm/lsp')
require('jamesstorm/treesitter')
require('jamesstorm/gitsigns')
require('jamesstorm/lualine')
require('jamesstorm/aerial')
--require('jamesstorm/diffview')

vim.api.nvim_set_keymap('n', '<leader>fj', '<cmd>%!python -m json.tool<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', {})


--vim.opt.termguicolors = true
--vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme nightfox]])
--vim.cmd([[colorscheme gruvbox]])
--
--
--


-- Default options
require('nightfox').setup({
  options = {
    sel0 = "#ffffff",
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = true,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  }
})
