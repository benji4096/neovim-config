return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup {
			ensure_installed = { "c", "cpp", "rust", "lua", "javascript", "python", "html", "json", "latex", "bash", "cmake", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "glsl", "java", "make", "toml", },
    		-- Install parsers synchronously (only applied to `ensure_installed`)
    		sync_install = false,

    		-- Automatically install missing parsers when entering buffer
    		-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	    	auto_install = true,

    		highlight = { enable = true },
		}
	end,
}
