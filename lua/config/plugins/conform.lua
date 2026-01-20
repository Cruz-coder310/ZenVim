return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({
					async = true,
					lsp_fallback = false,
					timeout_ms = 2000,
				})
			end,
			mode = { "n", "v" },
			desc = "Formatear archivo o selección",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "prettier" },
			javascript = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 2000,
			lsp_fallback = false,
		},
	},
}
