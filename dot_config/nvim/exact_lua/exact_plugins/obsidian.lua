return {
	{
		"obsidian-nvim/obsidian.nvim",
		version = "*",
		ft = "markdown",
		---@module 'obsidian'
		---@type obsidian.config
		opts = {
      legacy_commands = false,
			workspaces = {
				{
					name = "Second Brain",
					path = "~/Documents/ObsidianVault/Second Brain",
				},
			},
		},
	},
}
