-- diagnostic
vim.keymap.set("n", "<leader>en", function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "next error" })

vim.keymap.set("n", "<leader>ep", function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "prev error" })

vim.keymap.set("n", "<leader>wn", function()
    vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARNING })
end, { desc = "next error" })

vim.keymap.set("n", "<leader>wp", function()
    vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARNING })
end, { desc = "prev error" })

-- quickfix
vim.keymap.set("n", "<leader>qf", vim.diagnostic.setqflist, { buffer = bufnr, desc = "Diagnostics to quickfix" })
vim.keymap.set("n", "<leader>qa", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code actions" })

-- navigation
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
vim.keymap.set("n", "gb", "<C-o>", { desc = "Jump back" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Find references" })

-- refactoring
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })

-- test
vim.keymap.set("n", "tt", function()
    require("neotest").summary.toggle()
end, { desc = "Test project" })

vim.keymap.set("n", "tr", function()
    require("neotest").run.run()
end, { desc = "prev error" })
