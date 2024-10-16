return {
	"EdenEast/nightfox.nvim",
	config = function()
		require("nightfox").setup({
			options = {
				fox = "nordfox",
				styles = {
					comments = "italic",
					functions = "italic",
					keywords = "italic",
					-- strings = "italic",
					-- variables = "italic",
				},
				colors = {
					bg_alt = "#1a1b26",
				},
			},
		})
	end,
} -- lazy
