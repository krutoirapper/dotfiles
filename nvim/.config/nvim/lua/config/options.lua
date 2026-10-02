vim.opt.number = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 750
vim.opt.showmode = false
vim.opt.termguicolors = true

vim.keymap.set('n', '<Esc>', function()
    vim.cmd('nohlsearch')
    vim.fn.setreg('/', '')
end, { silent = true })

