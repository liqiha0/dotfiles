return {
	{
		"mikavilpas/yazi.nvim",
		version = "*",
		lazy = false,
		init = function()
			vim.g.loaded_netrwPlugin = 1
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			open_for_directories = true,
		},
		keys = {
			{
				"<leader>e",
				"<cmd>Yazi<cr>",
				desc = "Open yazi at current file",
			},
			{
				"<leader>E",
				"<cmd>Yazi cwd<cr>",
				desc = "Open yazi at cwd",
			},
		},
	},
}
