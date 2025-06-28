local M = {}

---Public setup entry
---@param opts? AbstractCsOptions
function M.setup(opts)
    opts = opts or {}
    local highlights = {}
    local theme = opts.theme or "bluish" -- bluish is fallback/default theme
    local palette = require("abstract_cs.themes." .. theme)

    if opts.global ~= nil then
        if opts.global.colors ~= nil then
            palette = vim.tbl_extend("force", palette, opts.global.colors)
        end
        if opts.global.highlights ~= nil then
            highlights = vim.tbl_extend("force", highlights, opts.global.highlights)
        end
    end
    if theme == "bluish" and opts.bluish ~= nil then
        if opts.bluish.colors ~= nil then
            palette = vim.tbl_extend("force", palette, opts.bluish.colors)
        end
        if opts.bluish.highlights ~= nil then
            highlights = vim.tbl_extend("force", highlights, opts.bluish.highlights)
        end
    end


    ---Generate all highlight groups from palette
    local groups = require("abstract_cs.highlight").groups(palette)

    for k, v in pairs(highlights) do
        groups[k] = v
    end

    vim.o.termguicolors = true
    vim.cmd("highlight clear")
    vim.g.colors_name = "abstract_" .. theme

    ---Apply highlights
    for name, val in pairs(groups) do
        val.force = true
        vim.api.nvim_set_hl(0, name, val)
    end
end

return M
