local M = {}

---Public setup entry
---@param opts? AbstractCsOptions
function M.setup(opts)
    opts = opts or {}
    local theme = opts.theme or "dark" -- dark is default theme
    local highlights = opts.highlights or {}
    local override_colors = opts.colors or {}

    ---Load a theme by name
    ---override theme's colors with user defined one
    local palette = vim.tbl_extend("force", require("abstract_colors.themes." .. theme).palette, override_colors)
    ---Generate all highlight groups from palette
    local groups = require("abstract_colors.highlight").groups(palette)

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
