vim.cmd("hi clear")
vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "abscs"

local util = require("abscs.util")
local theme = require("abscs.highlight")
util.load(theme)
