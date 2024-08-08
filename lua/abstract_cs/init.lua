--[==[
TODO:
this will be the syntax in future.
for now, apply the custom_highlights to all theme

require("abstract_cs").setup({
	theme = "aqua",
	custom_highlights = {
		["*"] = {
			Normal = { fg = "#FFFFFF", bg = "#FF00FF" },
		},
		["aqua"] = {
			Normal = { fg = "#FFFFFF", bg = "#FF00FF" },
		},
		["light"] = {
			Normal = { fg = "#FFFFFF", bg = "#FF00FF" },
		},
	},
})
--]==]

local M = {}
local set_highlight = require("abstract_cs.util").set_highlight

--- @type SetupOptions
_G.ABSTRACT_CS_USER_OPTS = _G.ABSTRACT_CS_USER_OPTS or {}

--- @param theme 'aqua'
M.apply_colorscheme = function(theme)
	vim.cmd("hi clear")
	vim.g.colors_name = "abstract_" .. theme

	--- @type COLORS
	local colors = require("abstract_cs.themes." .. theme).colors
	local highlights = require("abstract_cs.highlight").highlights(colors)

	for name, val in pairs(highlights) do
		set_highlight(name, val)
	end

	for name, val in pairs(_G.ABSTRACT_CS_USER_OPTS.custom_highlights) do
		set_highlight(name, val)
	end
end

--- @param opts SetupOptions
M.setup = function(opts)
	vim.o.termguicolors = true
	_G.ABSTRACT_CS_USER_OPTS = {
		theme = opts.theme or "aqua",
		custom_highlights = opts.custom_highlights or {},
	}
	M.apply_colorscheme(_G.ABSTRACT_CS_USER_OPTS.theme)
end

return M
