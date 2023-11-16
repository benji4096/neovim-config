
return {
	"sainnhe/sonokai",
	config = function()
		vim.cmd.colorscheme "sonokai"
	end
}

--return {
--	"ellisonleao/gruvbox.nvim",
--	config = function()
--		vim.cmd.colorscheme "gruvbox"
--	end
--}

--return {
--	"savq/melange-nvim",
--	config = function()
--		vim.opt.termguicolors = true
--		vim.cmd.colorscheme "melange"
--	end,
--}

--return {
--	"patstockwell/vim-monokai-tasty",
--	config = function()
--		vim.cmd.colorscheme "vim-monokai-tasty"
--	end,
--}

--return {
--	"catppuccin/nvim",
--	name = "catppuccin",
--	priority = 1000,
--
--	config = function()
--		require("catppuccin").setup({
--			flavour = "mocha",
--			transparent_background = false,
--		})
--		vim.cmd.colorscheme "catppuccin"
--	end,
--}

--return {
--	"Mofiqul/vscode.nvim",
--	config = function()
--		--vim.o.background = "dark"
--		require("vscode").setup({
--			transperant = false,
--		})
--		require("vscode").load()
--	end
--}

