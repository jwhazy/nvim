-- File tree
return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>m", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
	},
	config = function()
		require("nvim-tree").setup({
			filters = {
				custom = { ".DS_Store", ".git" },
				dotfiles = false,
			},
			view = {
				adaptive_size = true,
			},
		})
	end,
}
