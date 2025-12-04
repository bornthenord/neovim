return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        update_focused_file = {
            enable = true,
        },
        on_attach = function(bufnr)
            local api = require("nvim-tree.api")

            -- Default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- Unbind a default keymap (e.g., <c-k>)
            vim.keymap.del("n", "<c-k>", { buffer = bufnr })

            -- Set a new keymap (e.g., use 'g' to open a file instead of 'o')
            vim.keymap.set("n", "h", api.node.navigate.parent_close, { buffer = bufnr, desc = "Close file" })
            vim.keymap.set("n", "l", api.node.open.edit, { buffer = bufnr, desc = "Open file" })
        end,
    },
}
