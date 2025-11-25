
local errors = {}

local function try_or_continue(f)
    return xpcall(f, function(e) table.insert(errors, e) end)
end

try_or_continue(function()
    vim.opt.relativenumber = true -- show relative line numbers
    vim.opt.number = true -- show line number
    vim.opt.statuscolumn = "%l║"
end)

try_or_continue(function()
    vim.opt.wrap = false -- line wrap
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.opt.smartindent = true
end)


try_or_continue(function()
    -- keybind to check lsp diagnostic
    vim.keymap.set("n", "gl", vim.diagnostic.open_float)

    -- keybind for goto definition/declaration
    vim.keymap.set("n", "<C-g>d", vim.lsp.buf.definition)
    vim.keymap.set("n", "<C-g>D", vim.lsp.buf.declaration)
end)

-- Resulting LSP Keybinds --
-- n   g l       -- check diagnostic
-- i   C-x C-o   -- omnifunc (lsp autocomplete)
-- n   C-g d     -- goto definition
-- n   C-g D     -- goto declaration

if (#errors > 0) then
    error(table.concat(errors, "\n"), 2)
end

