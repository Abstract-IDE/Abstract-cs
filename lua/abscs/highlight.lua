local config = require "abscs.config"
local colors = require "abscs.themes.aqua"
local M = {}

M.base = {

	-----------------------------------------
	--  Editor settings
	-----------------------------------------

	--  completion menu
	----------------------------------
	Pmenu               = { fg = colors.Pmenu, bg = colors.bg }, -- completion window border color and background color
	PmenuSel            = { fg = colors.PmenuSelFG, bg = colors.PmenuSelBG },
	PmenuSbar           = { bg = colors.PmenuSbar },
	PmenuThumb          = { bg = colors.PmenuThumb },
	----------------------------------

	NormalFloat         = { fg = colors.NormalFloat, bg = colors.bg }, -- floating window
	FloatBorder         = { fg = colors.FloatBorder, bg = "NONE" },
	Folded              = { fg = colors.FoldedFG, bg = colors.FoldedBG },
	VertSplit           = { fg = colors.VertSplit, bg = colors.bg },
	LineNr              = { fg = colors.LineNr, bg = colors.bg }, -- number column
	CursorLineNr        = { fg = colors.CursorLineNrFG, bg = colors.CursorLineNrBG, style = "bold" },
	Cursor              = { fg = colors.Curosr, bg = colors.bg },
	CursorColumn        = { fg = "NONE", bg = "NONE" },
	FoldColumn          = { fg = colors.FoldColumn },
	CursorLine          = { bg = colors.CursorLine },
	-- CursorIM           =  { fg=colors.cursor_fg, bg=colors.cursor_bg },
	SignColumn          = { fg = colors.bg, bg = colors.bg },
	ColorColumn         = { bg = colors.bg },
	Conceal             = { fg = colors.fg }, -- { bg = config.transparent_background and "NONE" or colors.bg },
	QuickFixLine        = { bg = colors.QuickFixLine },
	Repeat              = { fg = colors.Repeat },
	Whitespace          = { fg = colors.Whitespace },
	WildMenu            = { fg = colors.fg },
	WarningMsg          = { fg = colors.WarningMsgFG, bg = colors.WarningMsgBG },
	Search              = { fg = colors.SearchFG, bg = colors.SearchBg },
	IncSearch           = { fg = colors.IncSearch, bg = colors.SearchFG },
	CurSearch           = { fg = colors.SearchFG, bg = colors.CurSearch },
	lCursor             = { fg = colors.lCursorFG, bg = colors.lCursorBG },
	TermCursor          = { fg = colors.lCursorFG, bg = colors.lCursorBG },
	TermCursorNC        = { fg = colors.lCursorFG, bg = colors.lCursorBG },
	StatusLine          = { fg = colors.StatusLine, bg = colors.StatusLine },
	StatusLineNC        = { fg = colors.StatusLineNCFG, bg = colors.StatusLineNCBG },
	Delimiter           = { fg = colors.Delimiter },
	DiffAdd             = { fg = colors.DiffAdd },
	DiffAdded           = { fg = colors.DiffAdded },
	DiffChange          = { fg = colors.DiffChange },
	DiffDelete          = { fg = colors.DiffDelete },
	DiffRemoved         = { fg = colors.DiffRemoved },
	DiffText            = { fg = colors.DiffText },
	DiffFile            = { fg = colors.DiffFile },
	StatusLineTerm      = { fg = colors.StatusLineTermFG, bg = colors.StatusLineTermBG },
	StatusLineTermNC    = { fg = colors.StatusLineTermNCFG, bg = colors.StatusLineTermNCBG },
	StatusLineSeparator = { fg = colors.StatusLineSeparator },
	Underline           = { style = "underline" },
	Label               = { fg = colors.Label }, -- underline Highlighted defination
	MatchParen          = { fg = colors.MatchParenFG, bg = colors.MatchParenBG },
	MatchParenCur       = { style = "underline" },
	MatchWord           = { style = "underline" },
	MatchWordCur        = { style = "underline" },
	MoreMsg             = { fg = colors.MoreMsg },
	ModeMsg             = { fg = colors.fg, bg = colors.bg },
	MsgArea             = { fg = colors.fg, bg = config.transparent_background and "NONE" or colors.bg, },
	MsgSeparator        = { fg = colors.fg, bg = colors.bg },
	Normal              = { fg = colors.fg, bg = config.transparent_background and "NONE" or colors.bg, },
	NormalNC            = { fg = colors.fg, bg = config.transparent_background and "NONE" or colors.bg, },
	Error               = { fg = colors.Error, bg = colors.bg, style = "bold" },
	ErrorMsg            = { fg = colors.ErrorMsg, bg = colors.bg, style = "bold" }, -- command error message
	Debug               = { fg = colors.fg },
	Visual              = { fg = "NONE", bg = colors.Visual, style = "bold" },
	Substitute          = { fg = colors.SubstituteFG, bg = colors.SubstituteBG },
	VisualNOS           = { fg = colors.VisualNOSFG, bg = colors.VisualNOSBG },

	TabLine             = { fg = colors.TabLineFG, bg = colors.TabLineBG, style = "none" },
	TabLineFill         = { fg = colors.bg, style = "none" },
	TabLineSel          = { fg = colors.fg, bg = colors.TabLineSel, style = "none" },
	TabLineCurrentWin   = { fg = colors.TabLineCurrentWin, bg = colors.TabLineBG, style = "none" }, -- its non standard highlight group defined for tabby.nvim

	-----------------------------------------
	--  end Editor settings
	-----------------------------------------


	-----------------------------------------
	-- LANGUAGE SYNTAX
	-----------------------------------------
	Boolean            = { fg = colors.Boolean },
	Character          = { fg = colors.Character },
	Comment            = { fg = colors.Comment, style = "italic" },
	Conditional        = { fg = colors.Conditional },
	Constant           = { fg = colors.Constant },
	Define             = { fg = colors.Define },
	Exception          = { fg = colors.Exception },
	Float              = { fg = colors.Float },
	Identifier         = { fg = colors.Identifier },
	Ignore             = { fg = colors.Ignore },
	Macro              = { fg = colors.Macro },
	NonText            = { fg = colors.NonText },
	Number             = { fg = colors.Number },
	Operator           = { fg = colors.Operator },
	PreCondit          = { fg = colors.PreCondit },
	PreProc            = { fg = colors.PreProc },
	Question           = { fg = colors.Question },
	Special            = { fg = colors.Special },
	SpecialChar        = { fg = colors.SpecialChar },
	SpecialComment     = { fg = colors.SpecialComment },
	SpecialKey         = { fg = colors.SpecialKey, style = "bold" },
	SpellBad           = { fg = colors.SpellBad, style = "underline" },
	SpellCap           = { fg = colors.SpellCap, style = "underline" },
	SpellLocal         = { fg = colors.SpellLocal, style = "underline" },
	SpellRare          = { fg = colors.SpellRare, style = "underline" },
	Statement          = { fg = colors.Statement },
	StorageClass       = { fg = colors.StorageClass },
	String             = { fg = colors.String },
	Structure          = { fg = colors.Structure },
	Tag                = { fg = colors.Tag },
	Title              = { fg = colors.Title },
	Todo               = { fg = colors.TodoFG, bg = "NONE", style = "bold" },
	Type               = { fg = colors.Type, style = "NONE" },
	Typedef            = { fg = colors.Typedef },
	Variable           = { fg = colors.Variable },
	URI                = { fg = colors.URI, style = "underline" },
	Parameter          = { fg = colors.Parameter, style = "italic" },
	Keyword            = { fg = colors.Keyword, style = "NONE" },
	Include            = { fg = colors.Include },
	KeywordFunction    = { fg = colors.KeywordFunction, style = "NONE" },
	KeywordReturn      = { fg = colors.KeywordReturn },
	KeywordOperator    = { fg = colors.KeywordOperator },
	Method             = { fg = colors.Method },
	Constructor        = { fg = colors.Constructor },
	FuncBuiltin        = { fg = colors.FuncBuiltin },
	Warning            = { fg = colors.Warning },
	Note               = { fg = colors.Note },
	TagAttribute       = { fg = colors.TagAttribute },
	Annotation         = { fg = colors.Annotation },
	Attribute          = { fg = colors.Attribute },
	ConstBuiltin       = { fg = colors.ConstBuiltin },
	ConstMacro         = { fg = colors.ConstMacro },
	Field              = { fg = colors.Field },
	FuncMacro          = { fg = colors.FuncMacro },
	Literal            = { fg = colors.Literal },
	Namespace          = { fg = colors.Namespace },
	Property           = { fg = colors.Property },
	PunctBracket       = { fg = colors.PunctBracket },
	TableBlock         = { fg = colors.TableBlock },
	PunctDelimiter     = { fg = colors.PunctDelimiter },
	PunctSpecial       = { fg = colors.PunctSpecial },
	StringEscape       = { fg = colors.StringEscape },
	StringRegex        = { fg = colors.StringRegex },
	Strong             = { fg = colors.Strong },
	Symbol             = { fg = colors.Symbol },
	TagDelimiter       = { fg = colors.TagDelimiter },
	Text               = { fg = colors.Text },
	QueryLinterError   = { fg = colors.QueryLinterError },
	TypeBuiltin        = { fg = colors.TypeBuiltin },
	VariableBuiltin    = { fg = colors.VariableBuiltin },
	ParameterReference = { fg = colors.ParameterReference },
	Emphasis           = { style = "italic" },
	-----------------------------------------
	-- end LANGUAGE SYNTAX
	-----------------------------------------

}


M.plugins = {

	-----------------------------------------
	-- PLUGIN SPECIFIC
	-----------------------------------------

	-- Buffer: github.com/akinsho/nvim-bufferline.lua
	-----------------------------------------
	BufferCloseButtonSelected = { fg = colors.fg, bg = colors.BufferCloseButtonSelected },
	BufferCurrent             = { fg = colors.BufferCurrentFg, bg = colors.BufferCurrentBg },
	BufferCurrentIndex        = { fg = colors.fg, bg = colors.bg },
	BufferCurrentMod          = { fg = colors.BufferCurrentMod, bg = colors.bg },
	BufferCurrentSign         = { fg = colors.BufferCurrentSign, bg = colors.bg },
	BufferCurrentTarget       = { fg = colors.BufferCurrentTarget, bg = colors.bg, style = "bold" },
	BufferInactive            = { fg = colors.BufferInactive, bg = colors.second_bg },
	BufferInactiveIndex       = { fg = colors.BufferInactiveIndex, bg = colors.second_bg },
	BufferInactiveMod         = { fg = colors.BufferInactiveMod, bg = colors.second_bg },
	BufferInactiveSign        = { fg = colors.BufferInactiveSign, bg = colors.second_bg },
	BufferInactiveTarget      = { fg = colors.BufferInactiveTarget, bg = colors.second_bg, style = "bold" },
	BufferIndicatorSelected   = { fg = colors.fg, bg = colors.BufferIndicatorSelected },
	BufferLineFill            = { fg = colors.fg, bg = colors.BufferLineFill, style = "bold" },
	BuffNumbers               = { fg = colors.fg, bg = colors.BuffNumbers },
	BufferVisible             = { fg = colors.fg, bg = colors.bg },
	BufferVisibleIndex        = { fg = colors.fg, bg = colors.bg },
	BufferVisibleMod          = { fg = colors.BufferVisibleMod, bg = colors.bg },
	BufferVisibleSign         = { fg = colors.BufferVisibleSign, bg = colors.bg },
	BufferVisibleTarget       = { fg = colors.BufferVisibleTarget, bg = colors.bg, style = "bold" },
	BufferSelected            = { bg = colors.BufferSelected },

	-- Tabs
	TabSelectedFG             = { fg = colors.TabSelectedFG },
	TabSelectedBG             = { bg = colors.TabSelectedBG },
	TabFG                     = { fg = colors.TabFG },
	TabBG                     = { bg = colors.TabBG },
	-----------------------------------------


	-- Cmp: github.com/hrsh7th/nvim-cmp
	-----------------------------------------
	CmpDocumentation       = { fg = colors.CmpDocumentation, bg = colors.none },
	CmpDocumentationBorder = { fg = colors.CmpDocumentationBorder, bg = colors.none },
	CmpItemAbbr            = { fg = colors.CmpItemAbbr, bg = colors.none },
	CmpItemAbbrDeprecated  = { fg = colors.CmpItemAbbrDeprecated, bg = colors.none },
	CmpItemAbbrMatch       = { fg = colors.CmpItemAbbrMatch, bg = colors.none },
	CmpItemAbbrMatchFuzzy  = { fg = colors.CmpItemAbbrMatchFuzzy, bg = colors.none },
	CmpItemMenu            = { fg = colors.CmpItemMenu, bg = colors.none },
	-- icon colors
	CmpItemKind            = { fg = colors.CmpItemKind, bg = colors.none },
	CmpItemKindClass       = { fg = colors.CmpItemKindClass, bg = colors.none },
	CmpItemKindFunction    = { fg = colors.CmpItemKindFunction, bg = colors.none },
	CmpItemKindInterface   = { fg = colors.CmpItemKindInterface, bg = colors.none },
	CmpItemKindKeyword     = { fg = colors.CmpItemKindKeyword, bg = colors.none },
	CmpItemKindMethod      = { fg = colors.CmpItemKindMethod, bg = colors.none },
	CmpItemKindProperty    = { fg = colors.CmpItemKindProperty, bg = colors.none },
	CmpItemKindText        = { fg = colors.CmpItemKindText, bg = colors.none },
	CmpItemKindUnit        = { fg = colors.CmpItemKindUnit, bg = colors.none },
	CmpItemKindVariable    = { fg = colors.CmpItemKindVariable, bg = colors.none },
	-----------------------------------------


	-- Dashboard: github.com/glepnir/dashboard-nvim
	-----------------------------------------
	DashboardCenter = { fg = colors.DashboardCenter },
	DashboardFooter = { fg = colors.DashboardFooter },
	DashboardHeader = { fg = colors.DashboardHeader },
	-----------------------------------------


	--  Debug:
	-----------------------------------------
	debugBreakpoint = { fg = colors.debugBreakpoint, style = "reverse" },
	debugPc         = { bg = colors.debugPc },
	-----------------------------------------


	-- Diffview
	-----------------------------------------
	DiffViewNormal             = { fg = colors.DiffViewNormal, bg = colors.second_bg },
	DiffviewFilePanelDeletion  = { fg = colors.DiffviewFilePanelDeletion },
	DiffviewFilePanelInsertion = { fg = colors.DiffviewFilePanelInsertion },
	DiffviewStatusAdded        = { fg = colors.DiffviewStatusAdded },
	DiffviewStatusDeleted      = { fg = colors.DiffviewStatusDeleted },
	DiffviewStatusModified     = { fg = colors.DiffviewStatusModified },
	DiffviewStatusRenamed      = { fg = colors.DiffviewStatusRenamed },
	DiffviewVertSplit          = { bg = colors.bg },
	-----------------------------------------


	-- Gitsigns: github.com/lewis6991/gitsigns.nvim
	-----------------------------------------
	GitSignsAdd                = { fg = colors.GitAdd },
	GitSignsChange             = { fg = colors.GitChange },
	GitSignsDelete             = { fg = colors.GitDelete },
	GitSignsUntracked          = { fg = colors.GitUntracked },
	GitSignsAddPreview         = { fg = colors.GitAddPreviewFG, bg = colors.GitAddPreviewBG },
	GitSignsDeletePreview      = { fg = colors.GitDeletePreviewFG, bg = colors.GitDeletePreviewBG },
	GitSignsDeleteVirtLn       = { fg = colors.GitDeletePreviewFG, bg = colors.GitDeletePreviewBG },
	GitSignsDeleteVirtLnInLine = { fg = colors.GitDeletePreviewFG, bg = colors.GitDeletePreviewBG },
	-----------------------------------------


	-- gitgutter: github.com/airblade/vim-gitgutter
	-----------------------------------------
	GitGutterAdd    = { fg = colors.GitGutterAddFG, bg = colors.GitGutterAddBG },
	GitGutterChange = { fg = colors.GitGutterChangeFG, bg = colors.GitGutterChangeBG },
	GitGutterDelete = { fg = colors.GitGutterDeleteFG, bg = colors.GitGutterDeleteBG },
	-----------------------------------------


	-- Indent-blankline: github.com/lukas-reineke/indent-blankline.nvim
	-----------------------------------------
	IblIndent      = { fg = colors.IblIndent },
	IblScope       = { fg = colors.IblScope },
	IblContextChar = { fg = colors.IblContextChar }, -- current Curosr Highlighted function
	IblSpaceChar   = { fg = colors.IblSpaceChar }, -- cursor color on indent space
	-----------------------------------------


	-- Lsp: neovim.io/doc/user/lsp.html
	-----------------------------------------
	DiagnosticError            = { fg = colors.DiagnosticError },
	DiagnosticFloatingError    = { fg = colors.DiagnosticFloatingError },
	DiagnosticFloatingHint     = { fg = colors.DiagnosticFloatingHint },
	DiagnosticFloatingInfo     = { fg = colors.DiagnosticFloatingInfo },
	DiagnosticFloatingWarn     = { fg = colors.DiagnosticFloatingWarn },
	DiagnosticHint             = { fg = colors.DiagnosticHint },
	DiagnosticInfo             = { fg = colors.DiagnosticInfo },
	DiagnosticSignError        = { fg = colors.DiagnosticSignError },
	DiagnosticSignHint         = { fg = colors.DiagnosticSignHint },
	DiagnosticSignInfo         = { fg = colors.DiagnosticSignInfo },
	DiagnosticSignWarn         = { fg = colors.DiagnosticSignWarn },
	DiagnosticUnderlineError   = { guisp = colors.DiagnosticUnderlineError, style = "underline", cterm = "underline", gui = "underline" },
	DiagnosticUnderlineHint    = { guisp = colors.DiagnosticUnderlineHint, style = "underline", cterm = "underline", gui = "underline" },
	DiagnosticUnderlineInfo    = { guisp = colors.DiagnosticUnderlineInfo, style = "underline", cterm = "underline", gui = "underline" },
	DiagnosticUnderlineWarn    = { guisp = colors.DiagnosticUnderlineWarn, style = "underline", cterm = "underline", gui = "underline" },
	DiagnosticVirtualTextError = { fg = colors.DiagnosticVirtualTextError },
	DiagnosticVirtualTextHint  = { fg = colors.DiagnosticVirtualTextHint },
	DiagnosticVirtualTextInfo  = { fg = colors.DiagnosticVirtualTextInfo },
	DiagnosticVirtualTextWarn  = { fg = colors.DiagnosticVirtualTextWarn },
	DiagnosticWarn             = { fg = colors.DiagnosticWarn },
	LspInlayHint               = { fg = colors.LspInlayHint, style = "italic" },
	-----------------------------------------


	-- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim
	-----------------------------------------
	LspSagaLightBulb = { fg = colors.LspSagaLightBulb, bg = 'NONE' },


	-- fidget.nvim: https://github.com/j-hui/fidget.nvim
	-----------------------------------------
	FidgetTitle = { fg = colors.FidgetTitle, bg = 'NONE', style = "bold" },
	FidgetTask  = { fg = colors.FidgetTask, bg = 'NONE' },
	-----------------------------------------


	-- vim-indent-guides: github.com/nathanaelkane/vim-indent-guides
	-----------------------------------------
	IndentGuidesEven = { fg = colors.IndentGuidesEven },
	IndentGuidesOdd  = { fg = colors.IndentGuidesOdd },
	-----------------------------------------


	-- flutter-tools.nvim: github.com/akinsho/flutter-tools.nvim/
	-----------------------------------------
	FlutterWidgetGuides = { fg = colors.FlutterWidgetGuides },
	-----------------------------------------


	-- Neogit: github.com/TimUntersberger/neogit
	-----------------------------------------
	NeogitBranch               = { fg = colors.NeogitBranch },
	NeogitDiffAdd              = { fg = colors.NeogitDiffAdd, bg = colors.second_bg },
	NeogitDiffContext          = { fg = colors.NeogitDiffContext, bg = colors.bg },
	NeogitDiffDelete           = { fg = colors.NeogitDiffDelete, bg = colors.second_bg },
	NeogitHunkHeader           = { fg = colors.NeogitHunkHeader, bg = colors.second_bg },
	-- Neogit...Highlight is when group is focused
	NeogitDiffAddHighlight     = { fg = colors.NeogitDiffAdd, bg = colors.second_bg },
	NeogitDiffContextHighlight = { fg = colors.NeogitDiffContext, bg = colors.bg },
	NeogitDiffDeleteHighlight  = { fg = colors.NeogitDiffDelete, bg = colors.second_bg },
	NeogitHunkHeaderHighlight  = { fg = colors.NeogitHunkHeader, bg = colors.second_bg },
	NeogitRemote               = { fg = colors.NeogitRemote },
	-----------------------------------------


	-- Nvim-tree: github.com/kyazdani42/nvim-tree.lua
	-----------------------------------------
	NvimTreeCursorLine       = { fg = colors.NvimTreeCursorLineFG, bg = colors.NvimTreeCursorLinebG },
	NvimTreeExecFile         = { fg = colors.NvimTreeExecFile },
	NvimTreeFolderIcon       = { fg = colors.NvimTreeFolderIcon },
	NvimTreeFolderName       = { fg = colors.NvimTreeFolderName },
	NvimTreeGitDeleted       = { fg = colors.NvimTreeGitDeleted },
	NvimTreeGitDirty         = { fg = colors.NvimTreeGitDirty },
	NvimTreeGitMerge         = { fg = colors.NvimTreeGitMerge },
	NvimTreeGitNew           = { fg = colors.NvimTreeGitNew },
	NvimTreeGitRenamed       = { fg = colors.NvimTreeGitRenamed },
	NvimTreeGitStaged        = { fg = colors.NvimTreeGitStaged },
	NvimTreeImageFile        = { fg = colors.NvimTreeImageFile },
	NvimTreeIndentMarker     = { fg = colors.NvimTreeIndentMarker },
	NvimTreeNormal           = { fg = colors.NvimTreeNormal, bg = colors.bg },
	NvimTreeRootFolder       = { fg = colors.NvimTreeRootFolder, style = "bold" },
	NvimTreeSpecialFile      = { fg = colors.NvimTreeSpecialFile },
	NvimTreeSymlink          = { fg = colors.NvimTreeSymlink },
	NvimTreeVertSplit        = { fg = colors.NvimTreeVertSplit, bg = colors.bg },
	NvimTreeOpenedFolderName = { fg = colors.NvimTreeOpenedFolderName, style = "italic" },
	-----------------------------------------


	-- Nvim-tree: github.com/nvim-neo-tree/neo-tree.nvim
	-----------------------------------------
	NeoTreeIndentMarker = { fg = colors.NeoTreeIndentMarker },
	NeoTreeExpander     = { fg = colors.NeoTreeExpander },
	NeoTreeFileIcon     = { fg = colors.NeoTreeFileIcon },
	NeoTreeModified     = { fg = colors.NeoTreeModified },
	NeoTreeFileName     = { fg = colors.NeoTreeFileName },


	-- telescope: github.com/nvim-telescope/telescope.nvim
	-----------------------------------------
	TelescopeBorder       = { fg = colors.TelescopeBorder, bg = config.transparent_background and "NONE" or colors.bg, },
	TelescopeMatching     = { fg = colors.TelescopeMatching },
	TelescopePromptPrefix = { fg = colors.TelescopePromptPrefix },
	TelescopeSelection    = { fg = colors.TelescopeSelectionFG, bg = colors.TelescopeSelectionBG },
	-----------------------------------------


	-- https://github.com/folke/trouble.nvim
	-----------------------------------------
	-- TroubleTextInformation = { fg=colors.red, bg=colors.green },
	TroubleFile             = { fg = colors.TroubleFile, bg = "NONE" }, -- the source file that has error
	TroubleFoldIcon         = { fg = colors.TroubleFoldIcon, bg = "NONE" }, -- fold icon color
	TroubleCount            = { fg = colors.TroubleCountFG, bg = colors.TroubleCountBG },
	TroubleTextError        = { fg = colors.TroubleTextError, bg = "NONE" }, -- error info text
	TroubleNormal           = { fg = colors.TroubleNormal, bg = "NONE" }, -- background color of trouble window
	TroubleLocation         = { fg = colors.TroubleLocation, bg = "NONE" }, -- location of error
	TroubleIndent           = { fg = colors.TroubleIndent, bg = "NONE" }, -- indent color
	TroubleSignError        = { fg = colors.TroubleSignError, bg = "NONE" }, -- error sign color
	TroubleSignWarn         = { fg = colors.TroubleSignWarn, bg = "NONE" }, -- Warn sign color
	TroubleCode             = { fg = colors.TroubleCode, bg = "NONE" },
	TroubleSignHint         = { fg = colors.TroubleSignHint, bg = "NONE" },
	TroubleIndentFoldClosed = { fg = colors.fg, bg = "NONE" },
	-- TroubleError       = { fg=colors.red, bg=colors.green },
	-- TroubleWarning     = { fg=colors.red, bg=colors.green },
	-- TroublePreview     = { fg=colors.red, bg=colors.green },
	-- TroubleSource      = { fg=colors.red, bg=colors.green },
	-- TroubleSignOther   = { fg=colors.red, bg=colors.green },
	-- TroubleTextWarning = { fg=colors.red, bg=colors.green },
	-- TroubleInformation = { fg=colors.red, bg=colors.green },
	-- TroubleHint        = { fg=colors.red, bg=colors.green },
	-- TroubleTextHint    = { fg=colors.red, bg=colors.green },
	-- TroubleText        = { fg=colors.red, bg=colors.green },
	-- TroubleSignInformation = { fg=colors.red, bg=colors.green },
	-----------------------------------------


	-- https://github.com/SmiteshP/nvim-navic
	-----------------------------------------
	NavicSeparator          = { fg = colors.NavicSeparator, bg = colors.bg, style = "italic" },
	NavicText               = { fg = colors.NavicText, bg = colors.bg, style = "italic" },
	NavicIconsArray         = { fg = colors.NavicIconsArray, bg = colors.bg, style = "italic" },
	NavicIconsBoolean       = { fg = colors.NavicIconsBoolean, bg = colors.bg, style = "italic" },
	NavicIconsClass         = { fg = colors.NavicIconsClass, bg = colors.bg, style = "italic" },
	NavicIconsConstant      = { fg = colors.NavicIconsConstant, bg = colors.bg, style = "italic" },
	NavicIconsConstructor   = { fg = colors.NavicIconsConstructor, bg = colors.bg, style = "italic" },
	NavicIconsEnum          = { fg = colors.NavicIconsEnum, bg = colors.bg, style = "italic" },
	NavicIconsEnumMember    = { fg = colors.NavicIconsEnumMember, bg = colors.bg, style = "italic" },
	NavicIconsEvent         = { fg = colors.NavicIconsEvent, bg = colors.bg, style = "italic" },
	NavicIconsField         = { fg = colors.NavicIconsField, bg = colors.bg, style = "italic" },
	NavicIconsFile          = { fg = colors.NavicIconsFile, bg = colors.bg, style = "italic" },
	NavicIconsFunction      = { fg = colors.NavicIconsFunction, bg = colors.bg, style = "italic" },
	NavicIconsInterface     = { fg = colors.NavicIconsInterface, bg = colors.bg, style = "italic" },
	NavicIconsKey           = { fg = colors.NavicIconsKey, bg = colors.bg, style = "italic" },
	NavicIconsMethod        = { fg = colors.NavicIconsMethod, bg = colors.bg, style = "italic" },
	NavicIconsModule        = { fg = colors.NavicIconsModule, bg = colors.bg, style = "italic" },
	NavicIconsNamespace     = { fg = colors.NavicIconsNamespace, bg = colors.bg, style = "italic" },
	NavicIconsNull          = { fg = colors.NavicIconsNull, bg = colors.bg, style = "italic" },
	NavicIconsNumber        = { fg = colors.NavicIconsNumber, bg = colors.bg, style = "italic" },
	NavicIconsObject        = { fg = colors.NavicIconsObject, bg = colors.bg, style = "italic" },
	NavicIconsOperator      = { fg = colors.NavicIconsOperator, bg = colors.bg, style = "italic" },
	NavicIconsPackage       = { fg = colors.NavicIconsPackage, bg = colors.bg, style = "italic" },
	NavicIconsProperty      = { fg = colors.NavicIconsProperty, bg = colors.bg, style = "italic" },
	NavicIconsString        = { fg = colors.NavicIconsString, bg = colors.bg, style = "italic" },
	NavicIconsStruct        = { fg = colors.NavicIconsStruct, bg = colors.bg, style = "italic" },
	NavicIconsTypeParameter = { fg = colors.NavicIconsTypeParameter, bg = colors.bg, style = "italic" },
	NavicIconsVariable      = { fg = colors.NavicIconsVariable, bg = colors.bg, style = "italic" },
	-----------------------------------------


	-- https://github.com/folke/noice.nvim
	-----------------------------------------
	NoiceCmdlinePopupBorder       = { fg = colors.fg,                 bg = colors.bg },
	NoiceCmdlineIconCmdline       = { fg = colors.fg,                 bg = colors.bg },
	NoiceCmdlinePopupBorderSearch = { fg = colors.NoiceCmdlineSearch, bg = colors.bg },
	NoiceCmdlineIconSearch        = { fg = colors.NoiceCmdlineSearch, bg = colors.bg },


	-----------------------------------------
	-- end PLUGIN SPECIFIC
	-----------------------------------------


	-----------------------------------------
	-- LANGUAGE SYNTAX
	-----------------------------------------


	-- Markdown
	-----------------------------------------
	markdownH1                = { fg = colors.markH },
	markdownH2                = { fg = colors.markH },
	markdownH3                = { fg = colors.markH },
	markdownH4                = { fg = colors.markH },
	markdownH5                = { fg = colors.markH },
	markdownH6                = { fg = colors.markH },
	markdownId                = { fg = colors.markId },
	markdownUrl               = { fg = colors.markUrl, style = "underline" },
	markdownRule              = { fg = colors.markRule },
	markdownBold              = { fg = colors.markBold, style = "bold" },
	markdownCode              = { fg = colors.markCode },
	markdownItalic            = { fg = colors.markItalic, style = "italic" },
	markdownCodeBlock         = { fg = colors.markCodeBlock },
	markdownCodeError         = { fg = colors.markCodeError },
	markdownLinkText          = { fg = colors.markLinkText },
	markdownListMarker        = { fg = colors.markList },
	markdownCodeSpecial       = { fg = colors.markCodeSpecial },
	markdownCodeDelimiter     = { fg = colors.markCodeDelimiter },
	markdownBlockquote        = { fg = colors.markQuote },
	markdownIdDeclaration     = { fg = colors.markIdDeclaration },
	markdownIdDelimiter       = { fg = colors.markIdDelimiter },
	markdownLinkDelimiter     = { fg = colors.markLinkDelimiter },
	markdownHeadingRule       = { fg = colors.markHeadingRule },
	markdownHeadingDelimiter  = { fg = colors.markHeadingDelimiter },
	markdownUrlTitleDelimiter = { fg = colors.markUrlTitleDelimiter },
	markdownOrderedListMarker = { fg = colors.markOrderedListMarker },

	-----------------------------------------


	-- HTML language:
	-----------------------------------------
	htmlArg = { style = "italic" },
	-----------------------------------------


	-- CSS / SASS / SCSS
	-----------------------------------------
	cssFlexibleBoxAttr  = { fg = colors.FlexibleBoxAttr, style = "italic" }, -- example -> center
	cssColor            = { fg = colors.Color, style = "italic" },        -- example -> green, red, blue
	cssUnitDecorators   = { style = "italic" },                           -- exaple -> rem, em, px,
	cssTagName          = { fg = colors.TagName, style = "NONE" },        -- only changes bold/italic| example -> body, html
	cssBoxProp          = { fg = colors.BoxProp },
	cssBraces           = { fg = colors.Braces },
	cssUIProp           = { fg = colors.UIProp },

	sassDefinition      = { fg = colors.Definition },
	sassProperty        = { fg = colors.Property },
	sassCssAttribute    = { fg = colors.Attribute },
	sassInclude         = { fg = colors.Include },

	cssTSPunctDelimiter = { fg = colors.PunctDelimiter, style = "NONE" }, -- example -> :
	cssTSPunctBracket   = { fg = colors.PunctBracket, style = "NONE" }, -- example -> { },()
	cssTSProperty       = { fg = colors.Property, style = "NONE" },    -- example -> background-color, display, text-align
	cssTSType           = { fg = colors.Type, style = "NONE" },        -- only changes color | example -> body, html

	scssTSProperty      = { fg = colors.Property },
	scssTSPunctBracket  = { fg = colors.PunctBracket },
	-----------------------------------------


	-- JSON Language
	-----------------------------------------
	jsonLabel          = { fg = colors.Label, style = "NONE" },
	jsonKeyword        = { fg = colors.Label, style = "NONE" },
	jsonKeywordMatch   = { fg = colors.KeywordMatch, style = "bold" },
	jsonString         = { fg = colors.String, style = "italic" },

	jsonTSLabel        = { fg = colors.Label, style = "NONE" },
	jsonTSPunctBracket = { fg = colors.PunctBracket, style = "bold" },
	-----------------------------------------


	-- MAKE Language
	-----------------------------------------
	cmakeCommand              = { fg = colors.Command },
	cmakeArguments            = { fg = colors.Arguments },
	cmakeKWvariable_watch     = { fg = colors.KWvariable_watch },
	cmakeKWproject            = { fg = colors.KWproject },
	cmakeGeneratorExpressions = { fg = colors.GeneratorExpressions },
	cmakeVariable             = { fg = colors.Variable },
	cmakeKWuse_mangled_mesa   = { fg = colors.fg, style = "italic" },
	cmakeTSVariable           = { fg = colors.Variable },
	-----------------------------------------


	-----------------------------------------
	-- end LANGUAGE SYNTAX
	-----------------------------------------


	-----------------------------------------
	-- treesitter:  github.com/nvim-treesitter/nvim-treesitter
	-----------------------------------------

	-- Identifiers
	--------------------------------
	["@variable"]              = { fg = colors.Variable, style = "NONE" }, -- various variable names
	["@variable.builtin"]      = { fg = colors.VariableBuiltin },          -- built-in variable names (e.g. `this`)
	["@variable.parameter"]    = { fg = colors.Parameter, style = "italic" }, -- parameters of a function
	["@variable.member"]       = { fg = colors.Field },                    -- object and struct fields
	["@constant"]              = { fg = colors.Constant },                 -- constant identifiers
	["@constant.builtin"]      = { fg = colors.ConstBuiltin },             -- built-in constant values
	["@constant.macro"]        = { fg = colors.ConstMacro },               -- constants defined by the preprocessor
	["@module"]                = { fg = colors.Namespace },                -- modules or namespaces
	-- ["@module.builtin"]     = {  }, -- built-in modules or namespaces
	["@label"]                 = { fg = colors.Label },                    -- GOTO and other labels (e.g. `label:` in C), including heredoc labels

	-- Literals
	--------------------------------
	["@string"]                = { fg = colors.String },                -- string literals
	-- ["@string.documentation"] = {}, -- string documenting code (e.g. Python docstrings)
	["@string.regexp"]         = { fg = colors.StringRegex },           -- regular expressions
	["@string.escape"]         = { fg = colors.StringEscape },          -- escape sequences
	-- ["@string.special"]       = {}, -- other special strings (e.g. dates)
	["@string.special.symbol"] = { fg = colors.Symbol },                -- symbols or atoms
	["@string.special.url"]    = { fg = colors.URI, style = "underline" }, -- URIs (e.g. hyperlinks)
	-- ["@string.special.path"]  = {}, -- filenames
	["@character"]             = { fg = colors.Character },             -- character literals
	-- ["@character.special"]    = {}, -- special characters (e.g. wildcards)
	["@boolean"]               = { fg = colors.Boolean },               -- boolean literals
	["@number"]                = { fg = colors.Number },                -- numeric literals
	["@number.float"]          = { fg = colors.Float },                 -- floating-point number literals

	-- Types
	--------------------------------
	["@type"]                  = { fg = colors.Type, style = "NONE" }, -- type or class definitions and annotations
	["@type.builtin"]          = { fg = colors.TypeBuiltin },       -- built-in types
	-- ["@type.definition"] = {}, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
	-- ["@type.qualifier"]  = {}, -- type qualifiers (e.g. `const`)
	["@attribute"]             = { fg = colors.Attribute }, -- attribute annotations (e.g. Python decorators)
	["@property"]              = { fg = colors.Property }, -- the key in key/value pairs

	-- Functions
	--------------------------------
	["@function"]              = { fg = colors.Function }, -- function definitions
	["@function.builtin"]      = { fg = colors.FuncBuiltin }, -- built-in functions
	-- ["@function.call"]        = {},-- function calls
	["@function.macro"]        = { fg = colors.FuncMacro }, -- preprocessor macros
	["@function.method"]       = { fg = colors.Method },   -- method definitions
	-- ["@function.method.call"] = {},-- method calls
	["@constructor"]           = { fg = colors.Constructor }, -- constructor calls and definitions
	["@operator"]              = { fg = colors.Operator }, -- symbolic operators (e.g. `+` / `*`)

	-- Keywords
	--------------------------------
	["@keyword"]               = { fg = colors.Keyword, style = "NONE" },      -- keywords not fitting into specific categories
	-- ["@keyword.coroutine"]           = {}, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
	["@keyword.function"]      = { fg = colors.KeywordFunction, style = "NONE" }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
	["@keyword.operator"]      = { fg = colors.KeywordOperator },              -- operators that are English words (e.g. `and` / `or`)
	-- ["@keyword.import"]              = {}, -- keywords for including modules (e.g. `import` / `from` in Python)
	-- ["@keyword.storage"]             = {}, -- modifiers that affect storage in memory or life-time
	["@keyword.repeat"]        = { fg = colors.Repeat },     -- keywords related to loops (e.g. `for` / `while`)
	["@keyword.return"]        = { fg = colors.KeywordReturn }, -- keywords like `return` and `yield`
	-- ["@keyword.debug"]               = {}, -- keywords related to debugging
	["@keyword.exception"]     = { fg = colors.Exception },  -- keywords related to exceptions (e.g. `throw` / `catch`)
	-- ["@keyword.conditional"]         = {}, -- keywords related to conditionals (e.g. `if` / `else`)
	-- ["@keyword.conditional.ternary"] = {}, -- ternary operator (e.g. `?` / `:`)
	-- ["@keyword.directive"]           = {}, -- various preprocessor directives & shebangs
	-- ["@keyword.directive.define"]    = {}, -- preprocessor definition directives

	-- Punctuation
	--------------------------------
	["@punctuation.delimiter"] = { fg = colors.PunctDelimiter }, -- delimiters (e.g. `--` / `.` / `,`)
	["@punctuation.bracket"]   = { fg = colors.PunctBracket }, -- brackets (e.g. `()` / `{}` / `[]`)
	["@punctuation.special"]   = { fg = colors.PunctSpecial }, -- special symbols (e.g. `{}` in string interpolation)

	-- Comments
	--------------------------------
	["@comment"]               = { fg = colors.Comment, style = "italic" }, -- line and block comments
	-- ["@comment.documentation"] = {}, -- comments documenting code
	["@comment.error"]         = { fg = colors.Error, tyle = "bold" },    -- error-type comments (e.g., `DEPRECATED:`)
	["@comment.warning"]       = { fg = colors.Warning, tyle = "bold" },  -- warning-type comments (e.g., `WARNING:`, `FIX:`)
	["@comment.hint"]          = { fg = colors.Note },                    -- note-type comments (e.g., `NOTE:`)
	-- ["@comment.info"]          = {}, -- info-type comments
	["@comment.todo"]          = { fg = colors.TodoFG, bg = colors.TodoBG }, -- todo-type comments (e.g-, `TODO:`, `WIP:`)

	-- Markup
	--------------------------------
	["@markup.strong"]         = { fg = colors.Strong },                    -- bold text
	["@markup.italic"]         = { fg = colors.markItalic, style = "italic" }, -- text with emphasis
	-- ["@markup.strikethrough"]  = {}, -- strikethrough text
	["@markup.underline"]      = { style = "underline" },                   -- underlined text (only for literal underline markup!)
	["@markup.heading"]        = { fg = colors.Title, style = "NONE" },     -- headings, titles (including markers)
	["@markup.quote"]          = { fg = colors.markQuote },                 -- block quotes
	-- ["@markup.math"]           = {}, -- math environments (e.g. `$ ... $` in LaTeX)
	-- ["@markup.environment"]    = {}, -- environments (e.g. in LaTeX)
	["@markup.link"]           = { fg = colors.markLinkText }, -- text references, footnotes, citations, etc.
	-- ["@markup.link.label"]     = {}, -- link, reference descriptions
	-- ["@markup.link.url"]       = {}, -- URL-style links
	-- ["@markup.raw"]            = {}, -- literal or verbatim text (e.g., inline code)
	-- ["@markup.raw.block"]      = {}, -- literal or verbatim text as a stand-alone block (use priority 90 for blocks with injections)
	["@markup.list"]           = { fg = colors.markList }, -- list markers
	-- ["@markup.list.checked"]   = {}, -- checked todo-style list markers
	-- ["@markup.list.unchecked"] = {}, -- unchecked todo-style list markers
	-- ["@diff.plus"]             = {}, -- added text (for diff files)
	-- ["@diff.minus"]            = {}, -- deleted text (for diff files)
	-- ["@diff.delta"]            = {}, -- changed text (for diff files)

	--------------------------------
	-- Non-highlighting captures
	-- ["@none"]    = {}, -- completely disable the highlight
	["@conceal"]               = { fg = colors.fg }, -- captures that are only meant to be concealed
	-- ["@spell"]   = {}, -- for defining regions to be spellchecked
	-- ["@nospell"] = {}, -- for defining regions that should NOT be spellchecked

	--------------------------------
	-- Others
	["@tag"]                   = { fg = colors.Tag },

	-- TSInclude            = { fg=colors.Include },
	-- TSTagAttribute       = { fg=colors.TagAttribute },
	-- TSAnnotation         = { fg=colors.Annotation },
	-- TSStructure          = { fg=colors.Structure },
	-- TSTagDelimiter       = { fg=colors.TagDelimiter },
	-- TSQueryLinterError   = { fg=colors.QueryLinterError },
	-- TSParameterReference = { fg=colors.ParameterReference },
	-----------------------------------------
}

return M
