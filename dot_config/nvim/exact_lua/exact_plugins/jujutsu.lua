return {
	"NicolasGB/jj.nvim",
	version = "*",
	dependencies = {
		"esmuellert/codediff.nvim",
	},
	config = function()
		require("jj").setup({
			diff = {
				backend = "codediff",
			},
		})
	end,
}
