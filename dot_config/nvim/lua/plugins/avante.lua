return {
	{
		"yetone/avante.nvim",
		opts = {
			instructions_file = "AGENTS.md",
			provider = "codex",
			providers = {},
			acp_providers = {
				["gemini-cli"] = {
					command = "gemini",
					args = { "--experimental-acp" },
					env = {
						NODE_NO_WARNINGS = "1",
					},
				},
				["codex"] = {
					command = "codex-acp",
					env = {
						NODE_NO_WARNINGS = "1"
					},
				},
			},
		},
	},
}
