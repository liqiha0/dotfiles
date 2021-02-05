return {
	"AlexandrosAlexiou/kotlin.nvim",
	ft = { "kotlin" },
	dependencies = {
		"trouble.nvim",
	},
	config = function()
		require("kotlin").setup({
			inlay_hints = {
				enabled = true,
			},
		})
	end,
}
