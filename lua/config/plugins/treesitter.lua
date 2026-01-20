-- lua\config\plugins\treesitter.lua
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },

	opts = {
		ensure_installed = {
			"lua",
			"vim",
			"markdown",
			"markdown_inline",
			"query",
		},
		highlight = { enable = true },
		indent = { enable = true },
	},
	config = function(_, opts)
		local status_ok, configs = pcall(require, "nvim-treesitter.configs")
		if not status_ok then
			return
		end
		configs.setup(opts)
	end,
}
