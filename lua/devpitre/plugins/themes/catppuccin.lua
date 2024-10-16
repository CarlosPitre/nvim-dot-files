return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			styles = {
				comments = { "italic" },
				functions = { "italic" },
				keywords = { "italic" },
				loops = { "italic" },
				types = { "italic" },
				conditionals = { "italic" },
			},
		})
	end,
}
