
local colors = require 'rvcs.colors'
local config = require 'rvcs.config'
local M = {}

M.base = {

	---------------------------------------
	--        Styles
	---------------------------------------
	Bold = {style = 'bold'},
	Italic = {style = 'italic'},
	Underlined = {style = 'underline'},
	---------------------------------------




	-----------------------------------------
	--  Editors settings
	-----------------------------------------
	Boolean = {fg = colors.cyan5},

	Character = {fg = colors.green2},
	ColorColumn = {bg = colors.black1},
	Comment = {fg = colors.comment, style = 'italic'},
	Conceal = {fg = colors.fg}, -- {bg = config.transparent_background and 'NONE' or colors.bg },
	Conditional = {fg = colors.cyan4},
	Constant = {fg = colors.white1},
	Cursor = {fg = colors.yellow, bg = colors.bg},
	CursorColumn = {fg = "NONE", bg = "NONE"},
	-- CursorIM = { fg = colors.cursor_fg, bg = colors.cursor_bg },
	CursorLine = {bg = colors.black2},
	CursorLineNr = {fg = colors.black, bg = colors.cl_bg, style = 'bold'},

	Debug = {fg = colors.fg},
	Define = {fg = colors.purple4},
	Delimiter = {fg = colors.gray7},
	DiffAdd = {fg = colors.green1},
	DiffAdded = {fg = colors.green1},
	DiffChange = {fg = colors.orange2},
	DiffDelete = {fg = colors.red1},
	DiffRemoved = {fg = colors.red1},
	DiffText = {fg = colors.cyan6},
	DiffFile = {fg = colors.purple2},
	-- DiffIndexLine     = { fg = colors.gray3 },
	-- Directory = { fg = colors.cyan6},

	-- EndOfBuffer = { fg = colors.bg },
	Error = {fg = colors.red1, bg = colors.bg, style = 'bold'},
	ErrorMsg = {fg = colors.gray, bg = colors.red3, style = 'bold'},
	Exception = {fg = colors.cyan5},

	Float = {fg = colors.purple4},
	FloatBorder = {fg = colors.gray3, bg = "NONE"},
	FoldColumn = {fg = colors.line_fg},
	Folded = {fg = colors.white, bg = colors.gray},
	Function = {fg = colors.cyan2},

	Identifier = {fg = colors.white1},
	Ignore = {fg = colors.gray7},
	IncSearch = {fg = colors.bg, bg = colors.orange2},
	Include = {fg = colors.pink1},

	Keyword = {fg = colors.cyan4},

	Label = { fg="#888888", style="bold" }, -- underline Highlighted defination
	LineNr = {fg = colors.line_fg, bg = colors.line_bg},

	Macro = {fg = colors.purple4},
	MatchParen = {fg = colors.white1, bg = colors.cyan6},
	MatchParenCur = {style = 'underline'},
	MatchWord = {style = 'underline'},
	MatchWordCur = {style = 'underline'},
	ModeMsg = {fg = colors.fg, bg = colors.bg},
	MoreMsg = {fg = colors.orange2},
	MsgArea = {
		fg = colors.fg,
		bg = config.transparent_background and 'NONE' or colors.bg,
	},
	MsgSeparator = {fg = colors.fg, bg = colors.bg},

	NonText = {fg = colors.non_text},
	Normal = {
		fg = colors.fg,
		bg = config.transparent_background and 'NONE' or colors.bg,
	},
	NormalFloat = {bg = colors.dark},
	NormalNC = {
		fg = colors.fg,
		bg = config.transparent_background and 'NONE' or colors.bg,
	},
	Number = {fg = colors.purple4},

	Operator = {fg = colors.cyan3},

	--  completion menu
	----------------------------------
	Pmenu      = {fg=colors.white1, bg="#141414"},
	PmenuSbar  = {bg=colors.gray},
	PmenuSel   = {fg=colors.black, bg = colors.cyan6},
	PmenuThumb = {bg=colors.cyan6},
	----------------------------------

	PreCondit = {fg = colors.purple4},
	PreProc = {fg = colors.cyan4},

	Question = {fg = colors.gray},
	QuickFixLine = {bg = colors.gray1},

	Repeat = {fg = colors.cyan4},

	Search = {fg = colors.bg, bg = colors.orange2},
	SignColumn = {bg = colors.line_bg},
	Special = {fg = colors.orange3},
	SpecialChar = {fg = colors.gray5},
	SpecialComment = {fg = colors.cyan5},
	SpecialKey = {fg = colors.gray7, style = 'bold'},
	SpellBad = {fg = colors.red1, style = 'underline'},
	SpellCap = {fg = colors.orange2, style = 'underline'},
	SpellLocal = {fg = colors.green1, style = 'underline'},
	SpellRare = {fg = colors.purple2, style = 'underline'},
	Statement = {fg = colors.red1},
	StatusLine = {fg = colors.black2, bg = colors.gray6},
	StatusLineNC = {fg = colors.gray7, bg = colors.gray},
	StatusLineSeparator = {fg = colors.dark},
	StatusLineTerm = {fg = colors.cyan5, bg = colors.gray},
	StatusLineTermNC = {fg = colors.gray7, bg = colors.gray},
	StorageClass = {fg = colors.pink1},
	String = {fg = colors.orange5},
	Structure = {fg = colors.cyan4},
	Substitute = {fg = colors.gray6, bg = colors.orange4},

	TabLine = {fg = colors.gray7},
	TabLineFill = {fg = colors.gray7},
	TabLineSel = {fg = colors.fg},
	Tag = {fg = colors.gray7},
	TermCursor = {fg = colors.cursor_fg, bg = colors.cursor_bg},
	TermCursorNC = {fg = colors.cursor_fg, bg = colors.cursor_bg},
	Title = {fg = colors.gray7},
	Todo = {fg = colors.yellow6, style = 'bold'},
	Type = {fg = colors.cyan6, style="NONE"},
	Typedef = {fg = colors.cyan4},

	Variable = {fg = colors.cyan3},
	VertSplit = {fg="#060606", bg="#808080"},
	Visual = {fg = "NONE", bg = colors.visual_select_bg, style = 'bold'},
	VisualNOS = {fg = colors.selection_fg, bg = colors.selection_bg},

	WarningMsg = {fg = colors.gray, bg = colors.orange3},
	Whitespace = {fg = colors.non_text},
	WildMenu = {fg = colors.fg},
	lCursor = {fg = colors.cursor_fg, bg = colors.cursor_bg},
	-----------------------------------------
	--  end Editors settings
	-----------------------------------------

}




M.plugins = {

	-----------------------------------------
	-- PLUGIN SPECIFIC
	-----------------------------------------


	-- Buffer:
	-----------------------------------------
	BufferCurrent = {fg = colors.fg, bg = colors.gray},
	BufferCurrentIndex = {fg = colors.fg, bg = colors.bg},
	BufferCurrentMod = {fg = colors.yellow1, bg = colors.bg},
	BufferCurrentSign = {fg = colors.blue1, bg = colors.bg},
	BufferCurrentTarget = {fg = colors.red1, bg = colors.bg, style = 'bold'},
	BufferInactive = {fg = colors.gray3, bg = colors.dark},
	BufferInactiveIndex = {fg = colors.gray3, bg = colors.dark},
	BufferInactiveMod = {fg = colors.yellow1, bg = colors.dark},
	BufferInactiveSign = {fg = colors.gray3, bg = colors.dark},
	BufferInactiveTarget = {fg = colors.red1, bg = colors.dark, style = 'bold'},
	BufferVisible = {fg = colors.fg, bg = colors.bg},
	BufferVisibleIndex = {fg = colors.fg, bg = colors.bg},
	BufferVisibleMod = {fg = colors.yellow1, bg = colors.bg},
	BufferVisibleSign = {fg = colors.gray3, bg = colors.bg},
	BufferVisibleTarget = {fg = colors.red1, bg = colors.bg, style = 'bold'},
	BufferLineFill = {fg = colors.fg, bg = colors.gray, style = 'bold'},
	-----------------------------------------


	-- Cmp: github.com/hrsh7th/nvim-cmp
	-----------------------------------------
	CmpDocumentation       = {fg = colors.fg,    bg = colors.none},
	CmpDocumentationBorder = {fg = colors.gray3, bg = colors.none},
	CmpItemAbbr            = {fg = colors.fg,    bg = colors.none},
	CmpItemAbbrDeprecated  = {fg = colors.gray3, bg = colors.none},
	CmpItemAbbrMatch       = {fg = colors.cyan3, bg = colors.none},
	CmpItemAbbrMatchFuzzy  = {fg = colors.cyan3, bg = colors.none},
	CmpItemKind            = {fg = colors.cyan6, bg = colors.none},
	CmpItemMenu            = {fg = colors.gray6, bg = colors.none},
	-----------------------------------------


	-- Dashboard: github.com/glepnir/dashboard-nvim
	-----------------------------------------
	DashboardCenter = {fg = colors.purple2},
	DashboardFooter = {fg = colors.cyan3},
	DashboardHeader = {fg = colors.cyan6},
	-----------------------------------------


	--  Debug:
	-----------------------------------------
	debugBreakpoint = {fg = colors.red1, style = 'reverse'},
	debugPc = {bg = colors.cyan3},
	-----------------------------------------


	-- Diffview
	-----------------------------------------
	DiffViewNormal = {fg = colors.gray3, bg = colors.dark},
	DiffviewFilePanelDeletion = {fg = colors.red4},
	DiffviewFilePanelInsertion = {fg = colors.diff_add},
	DiffviewStatusAdded = {fg = colors.diff_add},
	DiffviewStatusDeleted = {fg = colors.red4},
	DiffviewStatusModified = {fg = colors.diff_change},
	DiffviewStatusRenamed = {fg = colors.diff_change},
	DiffviewVertSplit = {bg = colors.bg},
	-----------------------------------------


	-- Gitsigns: github.com/lewis6991/gitsigns.nvim
	-----------------------------------------
	GitSignsAdd = {fg = colors.green1, bg = colors.line_bg},
	GitSignsChange = {fg = colors.diff_change, bg = colors.line_bg},
	GitSignsDelete = {fg = colors.red, bg = colors.line_bg},
	-----------------------------------------


	-- gitgutter: github.com/airblade/vim-gitgutter
	-----------------------------------------
	GitGutterAdd = {fg = colors.diff_add},
	GitGutterChange = {fg = colors.diff_change},
	GitGutterDelete = {fg = colors.red4},
	-----------------------------------------


	-- Indent-blankline: github.com/lukas-reineke/indent-blankline.nvim
	-----------------------------------------
	IndentBlanklineChar               = { fg="#fff000"},
	IndentBlanklineContextChar        = { fg="#888888" }, -- current Curosr Highlighted function
	IndentBlanklineSpaceChar          = { fg="#126b70" },  -- cursor color on indent space
	-- IndentBlanklineSpaceCharBlankline = { fg= "#ff0000"},
	-- IndentBlanklineContextStart       = { fg= colors.yellow},

	IndentBlanklineIndent1            = { fg="#273c45" },
	IndentBlanklineIndent2            = { fg="#223232" },
	IndentBlanklineIndent3            = { fg="#292929" },
	IndentBlanklineIndent4            = { fg="#202020" },
	IndentBlanklineIndent5            = { fg="#1f1f1f" },
	IndentBlanklineIndent6            = { fg="#12121f" },
	IndentBlanklineIndent7            = { fg="#151515" },
	IndentBlanklineIndent8            = { fg="#12121f" },


	-----------------------------------------


	-- Lsp: neovim.io/doc/user/lsp.html
	-----------------------------------------
	DiagnosticVirtualTextInfo = {fg = colors.orange6},
	DiagnosticHint            = {fg = colors.blue1},
	DiagnosticError           = {fg = colors.red2},
	DiagnosticInfo            = {fg = colors.yellow1},
	DiagnosticVirtualTextWarn = {fg = colors.orange6},
	DiagnosticWarn            = {fg = colors.orange1},

	DiagnosticFloatingError   = {fg = colors.red2},
	DiagnosticFloatingHint    = {fg = colors.blue1},
	DiagnosticFloatingInfo    = {fg = colors.yellow1},
	DiagnosticFloatingWarn    = {fg = colors.orange1},

	DiagnosticSignError       = {fg = colors.red2, bg = colors.line_bg},
	DiagnosticSignHint        = {fg = colors.blue1, bg = colors.line_bg},
	DiagnosticSignInfo        = {fg = colors.yellow1, bg = colors.line_bg},
	DiagnosticSignWarn        = {fg = colors.orange1, bg = colors.line_bg},

	DiagnosticUnderlineError  = {style = 'underline'},
	DiagnosticUnderlineHint   = {style = 'underline'},
	DiagnosticUnderlineInfo   = {style = 'underline'},
	DiagnosticUnderlineWarn   = {style = 'underline'},

	DiagnosticVirtualTextError= {fg = colors.red5},
	DiagnosticVirtualTextHint = {fg = colors.gray1},
	-----------------------------------------


	-- vim-indent-guides: github.com/nathanaelkane/vim-indent-guides
	-----------------------------------------
	IndentGuidesEven = {fg = colors.white1},
	IndentGuidesOdd = {fg = colors.gray7},
	-----------------------------------------


	-- flutter-tools.nvim: github.com/akinsho/flutter-tools.nvim/
	-----------------------------------------
	FlutterWidgetGuides = {fg = colors.gray4},
	-----------------------------------------


	-- Neogit: github.com/TimUntersberger/neogit
	-----------------------------------------
	NeogitBranch = {fg = colors.purple3},
	NeogitRemote = {fg = colors.purple2},
	NeogitHunkHeader = {fg = colors.accent, bg = colors.dark},
	NeogitDiffContext = {fg = colors.accent, bg = colors.bg},
	NeogitDiffAdd = {fg = colors.diff_add, bg = colors.dark},
	NeogitDiffDelete = {fg = colors.red4, bg = colors.dark},
	-- Neogit...Highlight is when group is focused
	NeogitHunkHeaderHighlight = {fg = colors.accent, bg = colors.dark},
	NeogitDiffContextHighlight = {fg = colors.accent, bg = colors.bg},
	NeogitDiffAddHighlight = {fg = colors.diff_add, bg = colors.dark},
	NeogitDiffDeleteHighlight = {fg = colors.red4, bg = colors.dark},
	-----------------------------------------


	-- Nvim-tree: github.com/kyazdani42/nvim-tree.lua
	-----------------------------------------
	NvimTreeCursorLine   = {fg = colors.black, bg = colors.cyan5},
	NvimTreeExecFile     = {fg = colors.green1},
	NvimTreeFolderIcon   = {fg = colors.cyan6},
	NvimTreeFolderName   = {fg = colors.cyan6},
	NvimTreeGitDeleted   = {fg = colors.red4},
	NvimTreeGitDirty     = {fg = colors.diff_add},
	NvimTreeGitMerge     = {fg = colors.diff_change},
	NvimTreeGitNew       = {fg = colors.diff_add},
	NvimTreeGitRenamed   = {fg = colors.diff_change},
	NvimTreeGitStaged    = {fg = colors.diff_add},
	NvimTreeImageFile    = {fg = colors.purple2},
	NvimTreeIndentMarker = {fg = colors.gray3},
	NvimTreeNormal       = {fg = colors.accent, bg = colors.black2},
	NvimTreeOpenedFolderName = {fg = colors.cyan6, style = 'italic'},
	NvimTreeRootFolder   = {fg = colors.gray3, style = 'bold'},
	NvimTreeSpecialFile  = {fg = colors.orange2},
	NvimTreeSymlink      = {fg = colors.cyan3},
	NvimTreeVertSplit    = {fg = colors.gray1},
	-----------------------------------------


	-- telescope: github.com/nvim-telescope/telescope.nvim
	-----------------------------------------
	TelescopeBorder = {
		fg = colors.gray3,
		bg = config.transparent_background and 'NONE' or colors.bg,
	},
	TelescopeMatching = {fg = colors.orange},
	TelescopePromptPrefix = {fg = colors.cyan2},
	TelescopeSelection = {fg = colors.white, bg = colors.gray},
	-----------------------------------------


	-- https://github.com/folke/trouble.nvim
	-----------------------------------------
	-- TroubleTextInformation = { fg = colors.red, bg = colors.green},
	TroubleFile = {fg = colors.black, bg = colors.gray6}, -- the source file that has error
	TroubleFoldIcon = {fg = colors.red, bg = colors.black2}, -- fold icon color
	TroubleCount = {fg = colors.red, bg = colors.black2},
	-- TroubleError = { fg = colors.red, bg = colors.green},

	TroubleTextError = {fg = colors.red3, bg = colors.black2}, -- error info text
	TroubleNormal = {fg = colors.white, bg = colors.black2}, -- background color of trouble window
	TroubleLocation = {fg = colors.cyan, bg = colors.black2}, -- location of error
	TroubleIndent = {fg = colors.white, bg = colors.black2}, -- indent color

	TroubleCode = {fg = colors.yellow5, bg = colors.black2},
	TroubleSignError = {fg = colors.red, bg = colors.black2}, -- error sign color

	-- TroubleSignWarning       = { fg = colors.red, bg = colors.green},
	-- TroubleWarning       = { fg = colors.red, bg = colors.green},
	-- TroublePreview       = { fg = colors.red, bg = colors.green},
	-- TroubleSignInformation       = { fg = colors.red, bg = colors.green},

	-- TroubleSource = { fg = colors.red, bg = colors.green},
	-- TroubleSignHint = { fg = colors.red, bg = colors.green},
	-- TroubleSignOther = { fg = colors.red, bg = colors.green},
	-- TroubleTextWarning = { fg = colors.red, bg = colors.green},
	-- TroubleInformation = { fg = colors.red, bg = colors.green},
	-- TroubleHint = { fg = colors.red, bg = colors.green},
	-- TroubleTextHint = { fg = colors.red, bg = colors.green},
	-- TroubleText = { fg = colors.red, bg = colors.green},

	-----------------------------------------


	-----------------------------------------
	-- end PLUGIN SPECIFIC
	-----------------------------------------




	-----------------------------------------
	-- LANGUAGE SPECIFIC
	-----------------------------------------

	-- Markdown
	-----------------------------------------
	markdownBold = {fg = colors.gray7, style = 'bold'},
	markdownCode = {fg = colors.orange3},
	markdownCodeBlock = {fg = colors.orange3},
	markdownUrl = {fg = colors.purple2, style = 'underline'},
	markdownCodeError = {fg = colors.red3},
	markdownH1 = {fg = colors.cyan6},
	markdownH2 = {fg = colors.cyan6},
	markdownH3 = {fg = colors.cyan6},
	markdownH4 = {fg = colors.cyan6},
	markdownH5 = {fg = colors.cyan6},
	markdownH6 = {fg = colors.cyan6},
	markdownId = {fg = colors.purple2},
	markdownItalic = {gf = colors.gray7, style = 'italic'},
	markdownLinkText = {fg = colors.cyan6},
	markdownRule = {fg = colors.accent},
	markdownListMarker = {fg = colors.red1},
	markdownHeadingDelimiter = {fg = colors.cyan6},
	markdownHeadingRule = {fg = colors.accent},
	markdownUrlTitleDelimiter = {fg = colors.cyan3},
	markdownCodeSpecial = {fg = colors.orange2},
	markdownCodeDelimiter = {fg = colors.green1},
	markdownBlockquote = {fg = colors.accent},
	markdownIdDeclaration = {fg = colors.cyan6},
	markdownIdDelimiter = {fg = colors.gray6},
	markdownLinkDelimiter = {fg = colors.gray6},
	markdownOrderedListMarker = {fg = colors.red1},


	-- Python Language
	-----------------------------------------
	pythonConditional = {fg = colors.purple4},
	pythonException = {fg = colors.purple4},
	pythonFunction = {fg = colors.cyan2},
	pythonInclude = {fg = colors.cyan6},
	pythonOperator = {fg = colors.cyan3},
	pythonStatement = {fg = colors.cyan3},
	pythonBoolean = {fg = colors.cyan5},

	pythonTSRepeat = {fg="#e30022"},
	-----------------------------------------


	-- C/C++ language:
	-----------------------------------------
	cppStatement      = {fg="#D68EB2", style="NONE"},
	cppBlock          = {fg="#FC2929", style="NONE"},
	-- cppAccess         = {fg="#FC2929"},

	cStatement        = {fg="#D68EB2", style="NONE"},
	cBlock            = {fg="#FC2929", style="NONE"},
	cStructure        = {fg="#FC2929", style="NONE"},
	-- cAccess           = {fg="#FC2929"},

	-- TreeSitter specially for CPP
	cppTSVariable     = {fg="#00cc99"},
	cppTSType         = {fg="#d4a373"},
	cppTSKeyword      = {fg="#e30022"},
	cppTSConditional  = {fg="#e2ff22"},
	cppTSProperty     = {fg="#ed872d"},
	cppTSRepeat       = {fg="#e30022"},
	cppTSBoolean      = {fg="#8e24ff"},
	cppTSError        = {fg="#FF0000", bg="NONE"},
	cppTSNamespace    = {fg="#FFFFFF", bg="NONE"},
	cppTSOperator     = {fg="#F92672", bg="NONE"},

	-- TreeSitter specially for C
	cTSVariable       = {fg="#00cc99"},
	cTSType           = {fg="#d4a373"},
	cTSKeyword        = {fg="#e30022"},
	cTSConditional    = {fg="#ffff99"},
	cTSProperty	      = {fg="#ed872d"},
	cTSRepeat         = {fg="#e30022"},
	cTSBoolean        = {fg="#8e24ff"},
	cTSError          = {fg="#FF0000", bg="NONE"},
	-----------------------------------------


	-- HTML language:
	-----------------------------------------
	htmlArg = { style = 'italic'},
	Title = { style='NONE' },
	-- htmlTag = {},
	-- htmlLink = { fg = colors.blue },
	-----------------------------------------


	-- CSS
	-----------------------------------------
	-----------------------------------------


	-- CSS
	-----------------------------------------
	scssTSProperty      = {fg="#00cc99"},
	-----------------------------------------


	-- MAKE Language
	-----------------------------------------
	cmakeCommand = {fg = colors.white},
	cmakeArguments = {fg = colors.cyan6},
	cmakeKWvariable_watch = {fg = colors.cyan3},
	cmakeKWproject = {fg = colors.pink1},
	cmakeGeneratorExpressions = {fg = "#FF1111"},
	cmakeVariable = {fg = colors.cyan3},
	cmakeKWuse_mangled_mesa = {fg = colors.fg, style = 'italic'},

	cmakeTSVariable = {fg = "#00cc99"},
	-----------------------------------------


	-----------------------------------------
	-- end LANGUAGE SPECIFIC
	-----------------------------------------




	-----------------------------------------
	-- treesitter:  github.com/nvim-treesitter/nvim-treesitter
	-----------------------------------------

	TSInclude            = { fg='#F92672' },
	TSVariable           = { fg='#01af96' , style = 'NONE'},
	TSString             = { fg='#CF5C36' },
	TSFunction           = { fg='#FFFFFF' },
	TSKeywordFunction    = { fg='#FC2929' },
	TSKeywordReturn      = { fg='#FC2929' },
	TSKeywordOperator    = { fg='#FBB13C' },
	TSParameter          = { fg='#7FBEEB' , style = 'italic'},
	TSComment            = { fg='#5c4d4d' , style = 'italic'},
	TSOperator           = { fg="#FC2929" },
	TSConditional        = { fg='#00AF54' },
	TSKeyword            = { fg="#F92672" , style="NONE"},
	TSException          = { fg="#00DFFF" },
	TSBoolean            = { fg="#00DFFF" },
	TSError              = { fg="#FC2929" , bg = "#060606", style = 'bold'},
	TSNumber             = { fg="#c19a6b" },
	TSType               = { fg='#767FD1' , style="NONE"},
	TSMethod             = { fg="#8877B1" },
	TSConstructor        = { fg="#01A0F5" },
	TSFuncBuiltin        = { fg="#00bfff" },

	TSWarning            = { fg="#FBB13C" },
	TSNote               = { fg="#FBB13C" },
	TSTag                = { fg="#178C94" },
	TSTagAttribute       = { fg="#00cc99" },

	TSAnnotation         = { fg="#cc5500" },
	TSAttribute          = { fg="#e97451" },
	TSCharacter          = { fg="#8a3324" },
	TSConstBuiltin       = { fg="#bd33a4" },
	TSConstMacro         = { fg="#702963" },
	TSConstant           = { fg="#007aa5" },
	TSField              = { fg="#01af96" },
	TSFloat              = { fg="#5f9ea0" },
	TSFuncMacro          = { fg="#006b3c" },
	TSLabel              = { fg="#ed872d" },
	TSLiteral            = { fg="#e30022" },
	TSNamespace          = { fg="#a67b5b" },
	TSProperty           = { fg="#307c44" },
	TSPunctBracket       = { fg="#a3c1ad" },
	TSPunctDelimiter     = { fg="#c19a6b" },
	TSPunctSpecial       = { fg="#78866b" },
	TSRepeat             = { fg="#ffff99" },
	TSStringEscape       = { fg="#ff0800" },
	TSStringRegex        = { fg="#ff0800" },
	TSStrong             = { fg="#e4717a" },
	TSStructure          = { fg="#00bfff" },
	TSSymbol             = { fg="#592720" },
	TSTagDelimiter       = { fg="#00cc99" },
	TSText               = { fg="#ffff99" },
	TSQueryLinterError   = { fg="#eb4c42" },
	TSTitle              = { fg="#ffff99" , style = 'NONE'},
	TSTypeBuiltin        = { fg="#ffa6c9" },
	TSURI                = { fg="#b31b1b" , style = 'underline'},
	TSVariableBuiltin    = { fg="#99badd" },
	TSParameterReference = { fg=colors.blue2 },
	TSEmphasis           = { style = 'italic' },
	TSUnderline          = { style = 'underline' },
	-----------------------------------------

}

return M
