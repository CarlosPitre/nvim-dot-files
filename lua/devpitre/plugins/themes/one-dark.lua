return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "deep", -- or 'onelight'
			transparent = true,
			hideInactiveStatusline = true,
			darkSidebar = true,
		})
	end,
}
