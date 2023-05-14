vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.guicursor = "i-ci:ver30-iCursor"

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.encoding="utf-8"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "80"

vim.g.spelllang=en

vim.g.mapleader = " "

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tex",
    command = "silent! :!latexmk -lualatex --interaction=batchmode -shell-escape"
})

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*.tex",
    command = "silent! :!llpp.inotify main.pdf &"
})
vim.g.openscad_auto_open = true

-- Start NERDTree and put the cursor back in the other window.
-- vim.cmd([[autocmd VimEnter * NERDTree | wincmd p]])
