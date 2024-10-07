return {
	"CopilotC-Nvim/CopilotChat.nvim",
	branch = "canary",
	dependencies = {
		{ "github/copilot.vim" }, -- or github/copilot.vim
		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
	},
	build = "make tiktoken", -- Only on MacOS or Linux
	config = function()
		require("CopilotChat").setup({
			debug = true,
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>ch", "<cmd>CopilotChatOpen<cr>", { desc = "Copilot Chat" })
	end,
	-- See Commands section for default commands if you want to lazy load on them
}
