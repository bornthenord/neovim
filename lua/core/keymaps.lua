local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "[F]ind [B]uffers" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "[F]ind [G]rep" })
