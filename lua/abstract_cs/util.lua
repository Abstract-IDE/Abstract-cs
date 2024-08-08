local M = {}

---@param name string
---@param val vim.api.keyset.highlight
M.set_highlight = function(name, val)
	-- these two lines are taken from neovim's source code
	val.force = true         -- Force links
	val.cterm = val.cterm or {} --  Make sure that `cterm` attribute is not populated from `gui`

	vim.api.nvim_set_hl(0, name, val)
end

return M
