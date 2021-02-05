return {
	{
		"catppuccin/nvim",
		opts = {
			background = {
				light = "latte",
				dark = "frappe",
			},
			transparent_background = true,
			custom_highlights = function(colors)
				return {
					NormalFloat = { bg = colors.mantle },
					FloatBorder = { fg = colors.surface2, bg = colors.mantle },
					FloatTitle = { fg = colors.blue, bg = colors.mantle },
					Pmenu = { bg = colors.mantle },
					PmenuSel = { bg = colors.surface0 },
					PmenuSbar = { bg = colors.surface0 },
					PmenuThumb = { bg = colors.surface2 },
				}
			end,
		},
	},
	{ "sainnhe/everforest" },
	{ "ellisonleao/gruvbox.nvim" },
	{ "sainnhe/gruvbox-material" },
	{ "EdenEast/nightfox.nvim" },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	-- {
	-- 	"f-person/auto-dark-mode.nvim",
	-- 	opts = {},
	-- },
}
