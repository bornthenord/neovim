return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	require("telescope").setup({
		pickers = {
			find_files = {
				find_command = {
					"rg",
					"--files",
					"--hidden",
					"--ignore-vcs",
					"--glob",
					"!**/bin/**",
					"--glob",
					"!**/obj/**",
					"--glob",
					"!**/Debug/**",
					"--glob",
					"!**/Release/**",
					"--glob",
					"!**/.vs/**",
					"--glob",
					"!**/packages/**",
				},
			},
		},
	}),
}
