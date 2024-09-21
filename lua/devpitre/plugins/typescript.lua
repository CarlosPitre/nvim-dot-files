return {
	"jose-elias-alvarez/typescript.nvim", -- add lsp plugin
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>To", "<cmd>TypescriptOrganizeImports<cr>", { desc = "Typescript Organize Imports" })
		keymap.set("n", "<leader>Tu", "<cmd>TypescriptRemoveUnused<cr>", { desc = "Typescript Remove Unused Imports" })
		keymap.set(
			"n",
			"<leader>Ta",
			"<cmd>TypescriptAddMissingImports<cr>",
			{ desc = "Typescript Add missing  Imports" }
		)
		keymap.set("n", "<leader>Tf", "<cmd>TypescriptRenameFile<cr>", { desc = "Rename File" })
	end,
}
