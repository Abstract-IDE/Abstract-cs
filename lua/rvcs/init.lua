local util          = require 'abscs.util'
local theme         = require 'abscs.theme'

vim.o.background    = 'dark'
vim.g.colors_name   = 'abscs-cs'

util.load(theme)
