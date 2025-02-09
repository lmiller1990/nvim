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
