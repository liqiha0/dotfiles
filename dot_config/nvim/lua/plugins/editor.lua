return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			filesystem = {
				filtered_items = {
          visible = true;
				},
			},
		},
		{
			"lewis6991/gitsigns.nvim",
			event = "LazyFile",
			opts = {
				linehl = true,
			},
		},
	},
}
