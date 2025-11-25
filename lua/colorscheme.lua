
vim.cmd("colorscheme habamax")
-- vim.cmd("colorscheme slate")
-- vim.cmd("colorscheme sorbet")
-- vim.cmd("colorscheme unokai")
-- vim.cmd("colorscheme wildcharm")

local hi = function(name, value)
    value.force = true
    vim.api.nvim_set_hl(0, name, value)
end

