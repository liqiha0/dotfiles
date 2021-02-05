return {
	"AlexandrosAlexiou/kotlin.nvim",
	ft = { "kotlin" },
	dependencies = {
		"trouble.nvim",
	},
	config = function()
		require("kotlin").setup({
			root_markers = {
				"gradlew",
				".git",
				"mvnw",
				"settings.gradle",
			},
			inlay_hints = {
				enabled = true,
			},
		})
	end,
}
