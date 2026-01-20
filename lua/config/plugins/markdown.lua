return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		opts = {
			heading = {
				enabled = true, -- muestra títulos grandes y claros
				sign = true, -- añade símbolos al inicio de los headings
			},
			code = {
				enabled = true, -- resalta bloques de código
			},
			dash = {
				enabled = true, -- estilos de listas con guiones
			},
			quote = {
				enabled = true, -- estilo especial para citas
			},
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- obligatorio para el render
			"nvim-tree/nvim-web-devicons", -- íconos bonitos (opcional)
		},
	},
	-- Lua
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode", -- Carga perezosa: solo se carga cuando escribes el comando
		keys = {
			{ "<leader>g", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
		},
		opts = {
			on_open = function(win)
				vim.wo[win].wrap = true -- Activa el ajuste de línea automático
				vim.wo[win].linebreak = true -- Corta las líneas en palabras completas, no a la mitad
			end,
		},
	},
}
