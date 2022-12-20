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


vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {})
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {})
vim.api.nvim_set_keymap('n', 'n', 'nzzv', {})
vim.api.nvim_set_keymap('n', 'N', 'Nzzv', {})

vim.api.nvim_set_keymap('n', '<leader>fj', '<cmd>%!python -m json.tool<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>w<cr><cmd>silent !/home/james/projects/stormycooks/recipe-author/bin/python /home/james/projects/stormycooks/recipe-author/build.py<cr>', {})


require'lspconfig'.jedi_language_server.setup{}

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

end)

