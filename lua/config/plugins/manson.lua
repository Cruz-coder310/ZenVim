return {
	"williamboman/mason.nvim",
	event = { "BufReadPre", "BufNewFile" },

	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},

	dependencies = {
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				ensure_installed = {
					"prettier",
                    "stylua",
				},
				auto_update = true,
				run_on_start = true,
			},
		},
	},
}
