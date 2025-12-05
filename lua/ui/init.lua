vim.opt.number = true -- Номера строк
vim.opt.termguicolors = true -- Включение true-цветов в терминале (важно для тем)
vim.opt.cursorline = true
vim.opt.colorcolumn = "100"

vim.cmd.colorscheme("ayu")

-- выключение статус строки
vim.opt.laststatus = 0
vim.opt.showmode = false
vim.opt.cmdheight = 0
