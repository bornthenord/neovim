-- diagnostic
vim.keymap.set("n", "<leader>en", function()
	vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "next error" })

vim.keymap.set("n", "<leader>ep", function()
	vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "prev error" })

-- quickfix
vim.keymap.set("n", "<leader>qf", vim.diagnostic.setqflist, { buffer = bufnr, desc = "Diagnostics to quickfix" })
vim.keymap.set("n", "<leader>qa", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code actions" })
