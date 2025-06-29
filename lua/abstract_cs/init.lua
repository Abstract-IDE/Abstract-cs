local M = {}
local config_overide = require("abstract_cs.utils").config_overide

---Public setup entry
---@param opts? AbstractCsOptions
function M.setup(opts)
    opts = opts or {}
    local highlights = {}
    local theme = opts.theme or "bluish" -- bluish is fallback/default theme
    local palette = require("abstract_cs.themes." .. theme)

    ---Overiding Plugin's options with user's one
    if opts.global ~= nil then
        if opts.global.colors ~= nil then
            palette = vim.tbl_extend("force", palette, opts.global.colors)
        end
        if opts.global.highlights ~= nil then
            highlights = vim.tbl_extend("force", highlights, opts.global.highlights)
        end
    end
    palette, highlights = config_overide("bluish", theme, opts, palette, highlights)
    palette, highlights = config_overide("aqua", theme, opts, palette, highlights)
    palette, highlights = config_overide("dirtish", theme, opts, palette, highlights)
    palette, highlights = config_overide("redish", theme, opts, palette, highlights)
    palette, highlights = config_overide("nightish", theme, opts, palette, highlights)

    vim.o.termguicolors = true
    vim.cmd("highlight clear")
    vim.g.colors_name = "abstract-" .. theme

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
