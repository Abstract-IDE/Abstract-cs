local M = {}

---@param name string
---@param val vim.api.keyset.highlight
M.set_highlight = function(name, val)
	vim.api.nvim_set_hl(0, name, val)
end

return M
