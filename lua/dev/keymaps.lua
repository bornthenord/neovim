-- diagnostic
vim.keymap.set("n", "<leader>en", function()
	vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "next error" })

vim.keymap.set("n", "<leader>ep", function()
	vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "prev error" })
