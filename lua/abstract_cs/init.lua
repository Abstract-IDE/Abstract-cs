local M = {}

function M.init_global()
    _G.ABSTRACT_CS = {
        ---@type AbstractCsOptions
        opts = {}
    }
end

---Public setup entry
---@param opts? AbstractCsOptions
function M.setup(opts)
    opts = opts or {}
    local theme_name = opts.name or "code" -- code is fallback/default theme

    if opts.theme_switched then
        _G.ABSTRACT_CS.opts.name = theme_name
        opts = _G.ABSTRACT_CS.opts
    else
        -- We need to initialize the global variable before accessing or modifying it; otherwise, it will throw an error.
        -- If we initialize the global variable elsewhere, its value will be overridden by the initialized default.
        M.init_global()
        _G.ABSTRACT_CS.opts = opts
    end

    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {}
    ---@type AbstractCsPalette
    local palette = require("abstract_cs.themes." .. theme_name)

    ---Overiding Plugin's options with user's one
    if opts.global ~= nil then
        if opts.global.colors ~= nil then
            palette = vim.tbl_extend("force", palette, opts.global.colors)
        end
        if opts.global.highlights ~= nil then
            highlights = vim.tbl_extend("force", highlights, opts.global.highlights)
        end
    end
    if opts.themes ~= nil and opts.themes[theme_name] ~= nil then
        if opts.themes[theme_name].colors ~= nil then
            palette = vim.tbl_extend("force", palette, opts.themes[theme_name].colors)
        end
        if opts.themes[theme_name].highlights ~= nil then
            highlights = vim.tbl_extend("force", highlights, opts.themes[theme_name].highlights)
        end
    end

    vim.o.termguicolors = true
    vim.cmd("highlight clear")
    vim.g.colors_name = "abstract-" .. theme_name

    ---Generate all highlight groups from palette
    local groups = require("abstract_cs.highlight").groups(palette)
    for k, v in pairs(highlights) do
        groups[k] = v
    end

    ---Apply highlights
    for name, val in pairs(groups) do
        val.force = true
        vim.api.nvim_set_hl(0, name, val)
    end
end

return M
