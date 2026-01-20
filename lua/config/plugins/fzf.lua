return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local fzf = require("fzf-lua")

		fzf.setup({
			winopts = {
				height = 0.85,
				width = 0.80,
				preview = {
					layout = "flex",
					vertical = "up:45%",
					hidden = "nohidden",
				},
			},
			files = {
				formatter = "path.filename_first",
			},
		})

		vim.keymap.set("n", "<leader>sf", fzf.files, { desc = "FZF Files" })
		vim.keymap.set("n", "<leader>sg", fzf.live_grep, { desc = "FZF Grep" })
		vim.keymap.set("n", "<leader><leader>", fzf.buffers, { desc = "FZF Buffers" })
		vim.keymap.set("n", "<leader>sh", fzf.help_tags, { desc = "FZF Help" })
	end,
}
