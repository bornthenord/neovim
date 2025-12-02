return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
	},
	opts = {
		extensions = {
			file_browser = {
				-- Ваши настройки расширения (по желанию)
				hijack_netrw = true, -- Заменяет стандартный Netrw
				theme = "ivy", -- Выбор темы (опционально)
			},
		},
	},
}
