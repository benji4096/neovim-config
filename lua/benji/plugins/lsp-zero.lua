return {
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",

		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/nvim-cmp'},
		{'L3MON4D3/LuaSnip'},
		{
		{ 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',

			config = function()
				local lsp_zero = require('lsp-zero')
				lsp_zero.extend_lspconfig()

				require('mason').setup({})
				require('mason-lspconfig').setup({
					-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
					ensure_installed = { "lua_ls", "jedi_language_server", "rust_analyzer", "cmake", "clangd", "bashls", "jsonls", "html", "quick_lint_js", "arduino_language_server" },
					handlers = {
						lsp_zero.default_setup,
					},
				})
				lsp_zero.preset("recommended")
				lsp_zero.on_attach(function(client, bufnr)
					lsp_zero.default_keymaps({buffer = bufnr})
				end)
				lsp_zero.setup()
			end,
		},

		}
	}
}
