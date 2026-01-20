-- lua\custom\keymaps.lua
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opts = { noremap = true, silent = true }

-- [[ Basic Keymaps ]]

vim.keymap.set("n", "<leader>mt", "<cmd>RenderMarkdown toggle<cr>", { desc = "Toggle Markdown Render" })
vim.keymap.set("v", "P", '"_dP', { desc = "Paste without yanking" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Diagnostics
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "[Q]uickfix list (Diagnostics)" })

-- Terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Window navigation (Moverse ENTRE ventanas)
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Focus window left" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Focus window right" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Focus window down" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Focus window up" })

-- Move windows (MOVER la ventana de lugar)
vim.keymap.set("n", "<leader>H", "<C-w>H", { desc = "Move window left" })
vim.keymap.set("n", "<leader>L", "<C-w>L", { desc = "Move window right" })
vim.keymap.set("n", "<leader>J", "<C-w>J", { desc = "Move window down" })
vim.keymap.set("n", "<leader>K", "<C-w>K", { desc = "Move window up" })

-- Buffers
vim.keymap.set("n", "<leader>b", "<cmd>ls<cr>:b ", { desc = "[B]uffers list" })
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "[W]rite file" })
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>n", "<cmd>bnext<cr>", { desc = "Buffer [N]ext" })
vim.keymap.set("n", "<leader>p", "<cmd>bprevious<cr>", { desc = "Buffer [P]revious" })

-- Move lines/blocks
vim.keymap.set("n", "<A-j>", ":m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move block down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move block up" })

-- Resize splits
vim.keymap.set("n", "<Up>", ":resize -2<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<Down>", ":resize +2<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", { desc = "Resize split right" })

-- Search enhancements
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Splits enhancements
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split horizontally" })
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Split equal size" })
vim.keymap.set("n", "<leader>c", ":close<CR>", { desc = "Close split" })

-- Indent
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Tabs (Pestañas)
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "[T]ab [O]pen new" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "[T]ab close" })

-- [[ Autocommands ]]
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Fecha y hora
vim.keymap.set("n", "<F5>", function()
	os.setlocale("en_US") -- English locale
	local date = os.date("%A, %d %B %Y — %H:%M:%S")
	vim.api.nvim_put({ "📅 " .. date }, "l", true, true)
end, { desc = "Insert date/time in English" })

-- Copiar ruta absoluta al clipboard con <leader>ep (antes fp)
vim.keymap.set("n", "<leader>ep", function()
	vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Copy absolute file path" })

-- Copiar ruta relativa al clipboard con <leader>er (antes fr)
vim.keymap.set("n", "<leader>er", function()
	vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Copy relative file path" })
