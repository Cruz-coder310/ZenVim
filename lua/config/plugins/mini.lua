return {
	{
		"echasnovski/mini.statusline",
		version = false,
		opts = { use_icons = true },
	},

	{
		"echasnovski/mini.files",
		version = false,
		opts = {
			use_icons = true,
			-- Opcional: configuramos ventanas para que se vean limpias
			windows = {
				width_focus = 30,
			},
		},
		keys = {
			{
				"<leader>a",
				function()
					local MiniFiles = require("mini.files")
					if not MiniFiles.close() then
						MiniFiles.open()
					end
				end,
				desc = "Xplore Mini",
			},
		},
	},
}
