
local g = vim.g
local o = vim.o
local a = vim.api

o.syntax = 'on'
o.number = true
o.relativenumber = true
o.signcolumn = 'yes'
o.cursorline = true
o.cursorcolumn = true
o.termguicolors = true
o.clipboard = 'unnamedplus'
o.smartcase = true
o.ignorecase = true
o.wildmode = 'longest,list,full'
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

--o.nocompatible = true

require('plugins')
require('keybinds')
require('lualine').setup()
require("mason").setup()
require'lspconfig'.jdtls.setup{}
--vim.cmd('source ~/.config/nvim/static/DWM.vim')
require('pluginconfig')



vim.cmd('colorscheme doom-one')
