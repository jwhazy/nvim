-- Themes
return {
	-- Change theme using `:Telescope colorscheme`.
	"Mofiqul/vscode.nvim",
	priority = 1000, -- Must start first
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("vscode").setup({
			disable_nvimtree_bg = true,
		})

		vim.cmd.colorscheme("vscode")
	end,
}
