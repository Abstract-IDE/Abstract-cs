---Palette table used for highlighting
---@class AbstractCsPalette
---@field main string         -- main colour
---@field fg string           -- main foreground
---@field bg string           -- main background
---@field bg_2 string      -- darker background used for sidebars
---@field bg_highlight string -- highlight background
---@field highlight string     -- lighter foreground
---@field comment string      -- comments and secondary text
---@field match string
---@field special string
---@field warn string
---@field border string
---@field ghost string
---@field indent string
---@field indent_scope string
---@field sucess string
---@field error string

---@alias AbstractCsTheme "bluish"|"dark"

--- @class ColorGroup
---@field highlights? table<string, vim.api.keyset.highlight> -- highlight overrides
---@field colors? AbstractCsPalette -- highlight's color overrides

---@class AbstractCsOptions
--- @field theme?  AbstractCsTheme
--- @field global? ColorGroup
--- @field bluish? ColorGroup
