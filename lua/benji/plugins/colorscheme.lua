
--return {
--  'ribru17/bamboo.nvim',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require('bamboo').setup {
--      -- optional configuration here
--	  diagnostics = {
--		  darker = false, -- darker colors for diagnostic
--		  undercurl = true, -- use undercurl instead of underline for diagnostics
--		  background = true, -- use background color for virtual text
--	  }
--  }
--  require('bamboo').load()
--  end,
--}

return {
	"sainnhe/sonokai",
	config = function()
		vim.g.sonokai_style = "shusia"
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

