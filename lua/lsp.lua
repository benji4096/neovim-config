
local errors = {}

local function try_lsp(name, args)
    return xpcall(function()
        vim.lsp.config(name, args)
        vim.lsp.enable(name)
    end, function(e) table.insert(errors, e) end)
end

-- lua lsp
try_lsp("lua", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
})

-- rust lsp
try_lsp("rust", {
    cmd = { "rust-analyzer" },
    root_markers = { "Cargo.toml" },
    filetypes = { "rust" },
})

-- python lsp
try_lsp("python", {
    cmd = { "jedi-language-server" },
    filetypes = { "python" },
})

-- bash lsp
try_lsp("bash", {
    cmd = { "bash-language-server", "start" },
    filetypes = { "sh" },
})

if (#errors > 1) then
    error(table.concat(errors, "\n"), 2)
end

