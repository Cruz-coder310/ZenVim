return {
	"fenetikm/falcon",
	lazy = false,
	config = function()
		vim.cmd("colorscheme falcon")

		local transparent_groups = {
			"Normal",
			"NormalFloat",
			"Folded",
			"SignColumn",
			"StatusLine",
			"StatusLineNC",
			"EndOfBuffer",
			"VertSplit",
		}

		local transparency_config = { bg = "none" }

		for _, group in ipairs(transparent_groups) do
			vim.api.nvim_set_hl(0, group, transparency_config)
		end
	end,
}
