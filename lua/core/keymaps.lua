local telescope = require("telescope.builtin")

-- exit
vim.keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "exit" })

-- files
vim.keymap.set("n", "ff", telescope.find_files, { desc = "find files" })
vim.keymap.set("n", "fb", telescope.buffers, { desc = "find buffers" })
vim.keymap.set("n", "fg", telescope.live_grep, { desc = "find grep" })
vim.keymap.set("n", "ft", ":NvimTreeOpen<CR>", { desc = "find grep" })
vim.keymap.set("n", "fs", ":w<CR>", { desc = "file save" })

-- buffer
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "buffer next" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "buffer prev" })
vim.keymap.set("n", "q", ":bd<CR>", { desc = "buffer close" })
vim.keymap.set("n", "<S-q>", ":bd!<CR>", { desc = "force buffer close" })
vim.keymap.set("n", "<A-q>", ":bufdo bd<CR>", { desc = "all buffers close" })

-- terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")
vim.keymap.set({ "t", "n" }, "<C-h>", "<C-\\><C-n><C-w>h", {})
vim.keymap.set({ "t", "n" }, "<C-j>", "<C-\\><C-n><C-w>j", {})
vim.keymap.set({ "t", "n" }, "<C-k>", "<C-\\><C-n><C-w>k", {})
vim.keymap.set({ "t", "n" }, "<C-l>", "<C-\\><C-n><C-w>l", {})
