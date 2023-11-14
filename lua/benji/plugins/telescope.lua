return {
	"nvim-telescope/telescope.nvim", tag = "0.1.4",
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<C-Space>', builtin.find_files, {})
	end,
}
