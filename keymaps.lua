local telescope = require("telescope.builtin")

-- exit

vim.keymap.set("n", "qq", ":q!<CR>")

-- files
vim.keymap.set("n", "ff", telescope.find_files, { desc = "[f]ind [f]iles" })
vim.keymap.set("n", "fb", telescope.buffers, { desc = "[f]ind [b]uffers" })
vim.keymap.set("n", "fg", telescope.live_grep, { desc = "[f]ind [g]rep" })

-- buffer
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "[b]uffer [n]ext" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "[b]uffer [p]rev" })
vim.keymap.set("n", "bc", ":bufdo bd<CR>", { desc = "[b]uffers [c]lose" })
vim.keymap.set("n", "bw", ":w<CR>", { desc = "[s]uffer [w]rite" })
vim.keymap.set("n", "bd", ":bd<CR>", { desc = "[b]uffer [d]elete" })
