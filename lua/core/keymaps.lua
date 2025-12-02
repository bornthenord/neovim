local telescope = require("telescope.builtin")

-- exit

vim.keymap.set("n", "qq", ":q!<CR>")

-- files
vim.keymap.set("n", "ff", telescope.find_files, { desc = "[f]ind [f]iles" })
vim.keymap.set("n", "fb", telescope.buffers, { desc = "[f]ind [b]uffers" })
vim.keymap.set("n", "fg", telescope.live_grep, { desc = "[f]ind [g]rep" })
vim.keymap.set("n", "ft", ":Neotree<CR>", { desc = "[f]ind [g]rep" })
vim.keymap.set("n", "fs", ":w<CR>", { desc = "[f]ile [s]ave" })

-- buffer
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "buffer next" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "buffer prev" })
vim.keymap.set("n", "<Esc>", ":bd<CR>", { desc = "buffer close" })
vim.keymap.set("n", "<S-Esc>", ":bufdo bd<CR>", { desc = "all buffers close" })
