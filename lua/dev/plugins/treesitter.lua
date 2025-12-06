return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- Автоматически устанавливать парсеры для перечисленных языков
            ensure_installed = { "c_sharp", "lua", "vim", "vimdoc" },

            -- Включить подсветку синтаксиса
            highlight = {
                enable = true,
            },
            -- Автоматически ставить отсутствующие парсеры при входе в буфер
            auto_install = true,
        })
    end,
}
