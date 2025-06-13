return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = { prompt_position = "top" },
				sorting_strategy = "ascending",
			},
		})
	end,
}
