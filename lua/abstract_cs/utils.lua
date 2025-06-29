local M = {}

---@param theme AbstractCsTheme
---@param config_theme AbstractCsTheme
---@param opts AbstractCsOptions
---@param palette AbstractCsPalette
---@param highlights table<string, vim.api.keyset.highlight>
---@return AbstractCsPalette
---@return table<string, vim.api.keyset.highlight>
M.config_overide = function(theme, config_theme, opts, palette, highlights)
    if config_theme == theme and opts[theme] ~= nil then
        if opts[theme].colors ~= nil then
            palette = vim.tbl_extend("force", palette, opts[theme].colors)
        end
        if opts[theme].highlights ~= nil then
            highlights = vim.tbl_extend("force", highlights, opts[theme].highlights)
        end
    end

    return palette, highlights
end

return M
