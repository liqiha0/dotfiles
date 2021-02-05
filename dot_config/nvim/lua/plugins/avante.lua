return {
	{
		"yetone/avante.nvim",
		opts = {
			instructions_file = "AGENTS.md",
			provider = "gemini-cli",
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
						NODE_NO_WARNINGS = "1",
					},
				},
			},
		},
	},
}
