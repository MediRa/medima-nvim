local opt = vim.opt
local global = vim.g

-- Set leader key to be " "
global.mapleader = " "
global.cursorhold_updatetime = 100
global.have_nerd_font = 100

-- Updatetime setting
opt.updatetime = 300

-- File encoding utf-8
opt.fileencoding = "utf-8"

-- Line number settings
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true

-- Tab and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.smartindent = true
opt.expandtab = true
opt.autoindent = true

-- Text wrapping
opt.wrap = true

-- Search setting
opt.ignorecase = true
opt.smartcase = true

opt.cursorcolumn = true
opt.cursorline = true
opt.cursorcolumn = true

opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Clipboard
vim.cmd("set clipboard+=unnamedplus")

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "󰌵",
        },
    },
})
