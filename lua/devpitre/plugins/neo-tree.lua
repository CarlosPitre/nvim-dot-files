-- return {
-- 	"nvim-tree/nvim-tree.lua",
-- 	dependencies = "nvim-tree/nvim-web-devicons",
-- 	config = function()
-- 		local nvimtree = require("nvim-tree")
--
-- 		-- recommended settings from nvim-tree documentation
-- 		vim.g.loaded_netrw = 1
-- 		vim.g.loaded_netrwPlugin = 1
--
-- 		nvimtree.setup({
-- 			view = {
-- 				width = 35,
-- 				relativenumber = true,
-- 			},
-- 			-- change folder arrow icons
-- 			renderer = {
-- 				indent_markers = {
-- 					enable = true,
-- 				},
-- 				icons = {
-- 					glyphs = {
-- 						folder = {
-- 							arrow_closed = "", -- arrow when folder is closed
-- 							arrow_open = "", -- arrow when folder is open
-- 						},
-- 					},
-- 				},
-- 			},
-- 			-- disable window_picker for
-- 			-- explorer to work well with
-- 			-- window splits
-- 			actions = {
-- 				open_file = {
-- 					window_picker = {
-- 						enable = true,
-- 					},
-- 				},
-- 			},
-- 			filters = {
-- 				custom = { ".DS_Store" },
-- 				dotfiles = true,
-- 			},
-- 			git = {
-- 				ignore = true,
-- 			},
-- 		})
--
-- 		-- set keymaps
-- 		local keymap = vim.keymap -- for conciseness
--
-- 		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
-- 		keymap.set(
-- 			"n",
-- 			"<leader>ef",
-- 			"<cmd>NvimTreeFindFileToggle<CR>",
-- 			{ desc = "Toggle file explorer on current file" }
-- 		) -- toggle file explorer on current file
-- 		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
-- 		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
-- 	end,
-- }
--

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = true,
					hide_by_name = {
						-- add extension names you want to explicitly exclude
						-- '.git',
						-- '.DS_Store',
						-- 'thumbs.db',
					},
					never_show = {},
				},
			},
		})
	end,
}
