local plugin_paths = { "core.plugins", "ui.plugins", "dev.plugins", "dev.dotnet.plugins" }
local lazy = require("core.lazy")

-- Последовательность важна
lazy.init(plugin_paths)
require("core.keymaps")
