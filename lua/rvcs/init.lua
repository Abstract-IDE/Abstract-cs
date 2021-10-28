local util          = require 'rvcs.util'
local theme         = require 'rvcs.theme'

vim.o.background    = 'dark'
vim.g.colors_name   = 'rvcs-cs'

util.load(theme)
