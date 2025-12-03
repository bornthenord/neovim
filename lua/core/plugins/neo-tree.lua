return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
        window = {
            mappings = {
                ["P"] = {
                    "toggle_preview",
                    config = {
                        use_float = false,
                        use_image_nvim = true,
                        use_snacks_image = true,
                        title = "Neo-tree Preview",
                    },
                },
            },
        },
    },
}
