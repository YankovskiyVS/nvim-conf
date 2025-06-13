return({
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"go",
				"rust",
				"c",
				"cpp",
				"python",
				"bash",
				"json",
				"toml",
				"yaml",
				"sql",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
})
