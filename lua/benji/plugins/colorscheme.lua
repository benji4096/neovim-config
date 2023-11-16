
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = false,
		})
		vim.cmd.colorscheme "catppuccin"
	end,
}

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

