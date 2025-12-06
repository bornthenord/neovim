local terminal = require("utils.terminal")
local prefix = "<leader>p"

vim.keymap.set("n", prefix .. "b", function()
    terminal.run("dotnet build")
end, { desc = "Build project" })
