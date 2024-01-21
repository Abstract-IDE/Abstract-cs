local M = {}

local function highlight(group, properties)
	local bg = properties.bg == nil and "" or "guibg=" .. properties.bg
	local fg = properties.fg == nil and "" or "guifg=" .. properties.fg
	local guisp = properties.guisp == nil and "" or "guisp=" .. properties.guisp
	local style = properties.style == nil and "" or "gui=" .. properties.style
	local cmd = table.concat({ "highlight", group, bg, fg, guisp, style }, " ")
	vim.api.nvim_command(cmd)
end

function M.load(theme)
	for _, v in pairs(theme) do
		for group, properties in pairs(v) do
			highlight(group, properties)
		end
	end
end

return M
