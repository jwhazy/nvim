return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = true
		vim.keymap.set("n", "<leader>,", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
		vim.keymap.set("n", "<leader>.", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
		vim.keymap.set("n", "<leader>e", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })

		require("barbar").setup({
			sidebar_filetypes = {
				NvimTree = true,
			},
		})
	end,
}
