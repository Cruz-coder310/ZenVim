return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown" },
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		keys = {
			{ "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
		},
		opts = {
			window = {
				width = 0.65,
				options = {
					signcolumn = "no",
				},
			},
			on_open = function(win)
				vim.wo[win].wrap = true
				vim.wo[win].linebreak = true
			end,
		},
	},
}
