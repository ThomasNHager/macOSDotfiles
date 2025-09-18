vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.backupdir = os.getenv("HOME") .. "/tmp/"
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = ">>"

vim.opt.scrolloff = 6

vim.g.mapleader = " "

vim.opt.colorcolumn = "80"

vim.opt.updatetime = 50

-- Netew winsize
-- @default = 20
vim.g.netrw_winsize = 15

-- Netrw banner
-- 0 : Disable banner
-- 1 : Enable banner
vim.g.netrw_banner = 0

-- Keep the current directory and the browsing directory synced.
-- This helps you avoid the move files error.
vim.g.netrw_keepdir = 0

-- Show directories first (sorting)
vim.g.netrw_sort_sequence = [[[\/]$,*]]

-- Human-readable files sizes
vim.g.netrw_sizestyle = "H"

-- Netrw list style
-- 0 : thin listing (one file per line)
-- 1 : long listing (one file per line with timestamp information and file size)
-- 2 : wide listing (multiple files in columns)
-- 3 : tree style listing
vim.g.netrw_liststyle = 3

-- Show hidden files
-- 0 : show all files
-- 1 : show not-hidden files
-- 2 : show hidden files only
vim.g.netrw_hide = 0

-- Preview files in a vertical split window
vim.g.netrw_preview = 1

-- Open files in split
-- 0 : re-use the same window (default)
-- 1 : horizontally splitting the window first
-- 2 : vertically   splitting the window first
-- 3 : open file in new tab
-- 4 : act like "P" (ie. open previous window)
vim.g.netrw_browse_split = 0

-- Split on the left
vim.g.netrw_preview = 1

-- Highlight marked files in the same way search matches are
vim.cmd("hi! link netrwMarkFile Search")
