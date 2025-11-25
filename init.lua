
local errors = {""}
local function try_require(s)
    return xpcall(
        function() return require(s) end,
        function(e) table.insert(errors, e) end
    )
end

try_require("colorscheme")
try_require("lsp")
try_require("settings")

if (#errors > 1) then
    error(table.concat(errors, "\n"), 2)
end

