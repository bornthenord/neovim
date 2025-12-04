vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

local plugin_paths = { "core.plugins", "ui.plugins", "dev.plugins", "dev.dotnet.plugins" }
local lazy = require("core.lazy")

lazy.init(plugin_paths)
