local opt = vim.opt

-- opt.colorcolumn = '80'
opt.number = true
opt.signcolumn = "yes"
opt.syntax = "ON"
opt.termguicolors = true

opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

vim.cmd([[
  filetype on
  filetype plugin on
  filetype indent on
]])

vim.opt.tabstop = 4      -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 4   -- Number of spaces for auto-indent
vim.opt.expandtab = true -- Convert tabs to spaces

