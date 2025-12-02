-- Клавиша-префикс для .NET команд
local toggleterm = require("toggleterm")
local prefix = "<leader>p"

vim.keymap.set("n", prefix .. "b", function()
	toggleterm.exec("dotnet build")
end, { desc = "Build project" })
