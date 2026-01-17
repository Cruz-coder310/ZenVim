return {
	"ficcdaf/ashen.nvim",
	config = function()
		vim.cmd("colorscheme ashen")
		vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
		vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
	end,
}
