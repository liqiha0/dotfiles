return {
	{
		"williamboman/mason.nvim",
		ft = "html",
		opts = function(_, opts)
			opts.ensure_installed = opts.ensure_installed or {}
			vim.list_extend(opts.ensure_installed, { "html-lsp" })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		ft = "html",
		opts = {
			servers = {
				html = {},
			},
		},
	},
}
