
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true -- show line number
vim.opt.statuscolumn = "%l║"

vim.opt.wrap = false -- line wrap
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- vim.cmd("colorscheme habamax")
-- vim.cmd("colorscheme slate")
-- vim.cmd("colorscheme sorbet")
-- vim.cmd("colorscheme unokai")
vim.cmd("colorscheme wildcharm")



-- keybind to check lsp diagnostic
vim.keymap.set("n", "gl", vim.diagnostic.open_float)


-- lua lsp
vim.lsp.config("lua", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
})
vim.lsp.enable("lua")

-- rust lsp
vim.lsp.config("rust", {
    cmd = { "rust-analyzer" },
    root_markers = { "Cargo.toml" },
    filetypes = { "rust" },
})
vim.lsp.enable("rust")

-- python lsp
vim.lsp.config("python", {
    cmd = { "jedi-language-server" },
    filetypes = { "python" },
})
vim.lsp.enable("python")

-- bash lsp
vim.lsp.config("bash", {
    cmd = { "bash-language-server", "start" },
    filetypes = { "sh" },
})
vim.lsp.enable("bash")



-- Resulting Keybinds --
-- n   g l       -- check diagnostic
-- i   C-x C-o   -- omnifunc (lsp autocomplete)

