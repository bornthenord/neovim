local toggleterm = require("toggleterm")
local prefix = "<leader>p"

vim.keymap.set("n", prefix .. "b", function()
	toggleterm.exec("dotnet build")
end, { desc = "Build project" })

vim.keymap.set("n", prefix .. "t", function()
	toggleterm.exec("dotnet test")
end, { desc = "Build project" })
