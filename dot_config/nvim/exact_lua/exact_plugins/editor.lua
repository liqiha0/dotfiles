return {
	{
		"folke/snacks.nvim",
		opts = {
			explorer = {
				replace_netrw = false,
			},
			picker = {
				sources = {
					explorer = {
						include = { "*" },
					},
				},
			},
		},
	},
}
