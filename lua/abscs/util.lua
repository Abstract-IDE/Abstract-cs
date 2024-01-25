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

function M.get_filetype_icon()
	-- depends on github.com/kyazdani42/nvim-web-devicons
	local _devicons, devicons = pcall(require, "nvim-web-devicons")
	if not _devicons then
		return false
	end
	local file_name = vim.fn.expand("%:t")
	local ext = vim.fn.expand("%:e")
	local icon, icon_color = devicons.get_icon_color(file_name, ext, { default = true })

	return {
		icon = icon,
		icon_color = icon_color,
	}
end

return M
