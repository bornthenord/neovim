local terminal = require("utils.terminal")
local prefix = "<leader>d"

vim.keymap.set("n", prefix .. "b", function()
    terminal.run("dotnet build")
end, { desc = "Build project" })

vim.keymap.set("n", prefix .. "r", function()
    terminal.run("dotnet run")
end, { desc = "Build project" })
