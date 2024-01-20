
local config = require "abscs.config"
local colors = require "abscs.themes.aqua"
local M = {}

M.base = {

	-----------------------------------------
	--  Editor settings
	-----------------------------------------

	--  completion menu
	----------------------------------
	Pmenu              = { fg=colors.Pmenu,      bg=colors.bg }, -- completion window border color and background color
	PmenuSel           = { fg=colors.PmenuSelFG, bg=colors.PmenuSelBG },
	PmenuSbar          = { bg=colors.PmenuSbar },
	PmenuThumb         = { bg=colors.PmenuThumb },
	----------------------------------

	NormalFloat        = { fg=colors.NormalFloat,   bg=colors.bg },        -- floating window
	FloatBorder        = { fg=colors.FloatBorder,   bg = "NONE" },
	Folded             = { fg=colors.FoldedFG,      bg=colors.FoldedBG },
	VertSplit          = { fg=colors.VertSplit,            bg=colors.bg },
	LineNr             = { fg=colors.LineNr,        bg=colors.bg},         -- number column
	CursorLineNr       = { fg=colors.CursorLineNrFG,bg=colors.CursorLineNrBG, style = "bold" },
	Cursor             = { fg=colors.Curosr,        bg=colors.bg },
	CursorColumn       = { fg = "NONE",             bg = "NONE" },
	FoldColumn         = { fg=colors.FoldColumn },
	CursorLine         = { bg=colors.CursorLine },
	-- CursorIM           =  { fg=colors.cursor_fg, bg=colors.cursor_bg },
	SignColumn         = { fg=colors.bg,  bg=colors.bg },
	ColorColumn        = { bg=colors.bg },
	Conceal            = { fg=colors.fg },-- { bg = config.transparent_background and "NONE" or colors.bg },
	QuickFixLine       = { bg=colors.QuickFixLine },
	Repeat             = { fg=colors.Repeat },
	Whitespace         = { fg=colors.Whitespace },
	WildMenu           = { fg=colors.fg },
	WarningMsg         = { fg=colors.WarningMsgFG,   bg=colors.WarningMsgBG },
	Search             = { fg=colors.SearchFG,       bg=colors.SearchBg },
	IncSearch          = { fg=colors.IncSearch,      bg=colors.SearchFG },
	CurSearch          = { fg=colors.SearchFG,       bg=colors.CurSearch },
	lCursor            = { fg=colors.lCursorFG,      bg=colors.lCursorBG },
	TermCursor         = { fg=colors.lCursorFG,      bg=colors.lCursorBG },
	TermCursorNC       = { fg=colors.lCursorFG,      bg=colors.lCursorBG },
	StatusLine         = { fg=colors.StatusLineFG,   bg=colors.StatusLineBG },
	StatusLineNC       = { fg=colors.StatusLineNCFG, bg=colors.StatusLineNCBG },
	Delimiter          = { fg=colors.Delimiter },
	DiffAdd            = { fg=colors.DiffAdd },
	DiffAdded          = { fg=colors.DiffAdded },
	DiffChange         = { fg=colors.DiffChange },
	DiffDelete         = { fg=colors.DiffDelete },
	DiffRemoved        = { fg=colors.DiffRemoved },
	DiffText           = { fg=colors.DiffText },
	DiffFile           = { fg=colors.DiffFile },
	StatusLineTerm     = { fg=colors.StatusLineTermFG,   bg=colors.StatusLineTermBG },
	StatusLineTermNC   = { fg=colors.StatusLineTermNCFG,bg=colors.StatusLineTermNCBG },
	StatusLineSeparator= { fg=colors.StatusLineSeparator },
	Underline          = { style = "underline" },
	Label              = { fg=colors.Label },-- underline Highlighted defination
	MatchParen         = { fg=colors.MatchParenFG, bg=colors.MatchParenBG },
	MatchParenCur      = { style = "underline" },
	MatchWord          = { style = "underline" },
	MatchWordCur       = { style = "underline" },
	MoreMsg            = { fg=colors.MoreMsg },
	ModeMsg            = { fg=colors.fg, bg=colors.bg },
	MsgArea            = { fg=colors.fg, bg=config.transparent_background and "NONE" or colors.bg, },
	MsgSeparator       = { fg=colors.fg, bg=colors.bg },
	Normal             = { fg=colors.fg, bg=config.transparent_background and "NONE" or colors.bg, },
	NormalNC           = { fg=colors.fg, bg=config.transparent_background and "NONE" or colors.bg, },
	Error              = { fg=colors.Error, bg=colors.bg, style = "bold" },
	ErrorMsg           = { fg=colors.ErrorMsg, bg=colors.bg, style = "bold" },-- command error message
	Debug              = { fg=colors.fg },
	Visual             = { fg="NONE", bg=colors.Visual, style="bold" },
	Substitute         = { fg=colors.SubstituteFG, bg=colors.SubstituteBG },
	VisualNOS          = { fg=colors.VisualNOSFG, bg=colors.VisualNOSBG },
	-----------------------------------------
	--  end Editor settings
	-----------------------------------------


	-----------------------------------------
	-- LANGUAGE SYNTAX
	-----------------------------------------
	Boolean            = { fg=colors.Boolean },
	Character          = { fg=colors.Character },
	Comment            = { fg=colors.Comment, style = "italic" },
	Conditional        = { fg=colors.Conditional },
	Constant           = { fg=colors.Constant },
	Define             = { fg=colors.Define},
	Exception          = { fg=colors.Exception },
	Float              = { fg=colors.Float },
	Identifier         = { fg=colors.Identifier },
	Ignore             = { fg=colors.Ignore },
	Macro              = { fg=colors.Macro },
	NonText            = { fg=colors.NonText },
	Number             = { fg=colors.Number },
	Operator           = { fg=colors.Operator },
	PreCondit          = { fg=colors.PreCondit },
	PreProc            = { fg=colors.PreProc },
	Question           = { fg=colors.Question },
	Special            = { fg=colors.Special },
	SpecialChar        = { fg=colors.SpecialChar },
	SpecialComment     = { fg=colors.SpecialComment },
	SpecialKey         = { fg=colors.SpecialKey, style = "bold" },
	SpellBad           = { fg=colors.SpellBad,   style = "underline" },
	SpellCap           = { fg=colors.SpellCap,   style = "underline" },
	SpellLocal         = { fg=colors.SpellLocal, style = "underline" },
	SpellRare          = { fg=colors.SpellRare,  style = "underline" },
	Statement          = { fg=colors.Statement },
	StorageClass       = { fg=colors.StorageClass },
	String             = { fg=colors.String },
	Structure          = { fg=colors.Structure },
	TabLine            = { fg=colors.TabLine },
	TabLineFill        = { fg=colors.TabLineFill },
	TabLineSel         = { fg=colors.fg },
	Tag                = { fg=colors.Tag },
	Title              = { fg=colors.Title },
	Todo               = { fg=colors.TodoFG, bg="NONE", style = "bold" },
	Type               = { fg=colors.Type, style="NONE" },
	Typedef            = { fg=colors.Typedef },
	Variable           = { fg=colors.Variable },
	URI                = { fg=colors.URI,        style="underline" },
	Parameter          = { fg=colors.Parameter,  style="italic" },
	Keyword            = { fg=colors.Keyword,    style="NONE" },
	Include            = { fg=colors.Include },
	Function           = { fg=colors.Function },
	KeywordFunction    = { fg=colors.KeywordFunction, style="NONE" },
	KeywordReturn      = { fg=colors.KeywordReturn },
	KeywordOperator    = { fg=colors.KeywordOperator },
	Method             = { fg=colors.Method },
	Constructor        = { fg=colors.Constructor },
	FuncBuiltin        = { fg=colors.FuncBuiltin },
	Warning            = { fg=colors.Warning },
	Note               = { fg=colors.Note },
	TagAttribute       = { fg=colors.TagAttribute },
	Annotation         = { fg=colors.Annotation },
	Attribute          = { fg=colors.Attribute },
	ConstBuiltin       = { fg=colors.ConstBuiltin },
	ConstMacro         = { fg=colors.ConstMacro },
	Field              = { fg=colors.Field },
	FuncMacro          = { fg=colors.FuncMacro },
	Literal            = { fg=colors.Literal },
	Namespace          = { fg=colors.Namespace },
	Property           = { fg=colors.Property },
	PunctBracket       = { fg=colors.PunctBracket },
	TableBlock         = { fg=colors.TableBlock },
	PunctDelimiter     = { fg=colors.PunctDelimiter },
	PunctSpecial       = { fg=colors.PunctSpecial },
	StringEscape       = { fg=colors.StringEscape },
	StringRegex        = { fg=colors.StringRegex },
	Strong             = { fg=colors.Strong },
	Symbol             = { fg=colors.Symbol },
	TagDelimiter       = { fg=colors.TagDelimiter },
	Text               = { fg=colors.Text },
	QueryLinterError   = { fg=colors.QueryLinterError },
	TypeBuiltin        = { fg=colors.TypeBuiltin },
	VariableBuiltin    = { fg=colors.VariableBuiltin },
	ParameterReference = { fg=colors.ParameterReference },
	Emphasis           = { style = "italic" },
	-----------------------------------------
	-- end LANGUAGE SYNTAX
	-----------------------------------------

}


M.plugins = {

	-----------------------------------------
	-- PLUGIN SPECIFIC
	-----------------------------------------

	-- Buffer:
	-----------------------------------------
	BufferCloseButtonSelected = { fg=colors.fg,                  bg=colors.BufferCloseButtonSelected },
	BufferCurrent             = { fg=colors.BufferCurrentFg,     bg=colors.BufferCurrentBg},
	BufferCurrentIndex        = { fg=colors.fg,                  bg=colors.bg },
	BufferCurrentMod          = { fg=colors.BufferCurrentMod,    bg=colors.bg },
	BufferCurrentSign         = { fg=colors.BufferCurrentSign,   bg=colors.bg },
	BufferCurrentTarget       = { fg=colors.BufferCurrentTarget, bg=colors.bg, style="bold" },
	BufferInactive            = { fg=colors.BufferInactive,      bg=colors.second_bg },
	BufferInactiveIndex       = { fg=colors.BufferInactiveIndex, bg=colors.second_bg },
	BufferInactiveMod         = { fg=colors.BufferInactiveMod,   bg=colors.second_bg },
	BufferInactiveSign        = { fg=colors.BufferInactiveSign,  bg=colors.second_bg },
	BufferInactiveTarget      = { fg=colors.BufferInactiveTarget,bg=colors.second_bg, style = "bold" },
	BufferIndicatorSelected   = { fg=colors.fg,                  bg=colors.BufferIndicatorSelected },
	BufferLineFill            = { fg=colors.fg,                  bg =colors.BufferLineFill, style = "bold" },
	BuffNumbers               = { fg=colors.fg,                  bg=colors.BuffNumbers },
	BufferVisible             = { fg=colors.fg,                  bg=colors.bg },
	BufferVisibleIndex        = { fg=colors.fg,                  bg=colors.bg },
	BufferVisibleMod          = { fg=colors.BufferVisibleMod,    bg=colors.bg },
	BufferVisibleSign         = { fg=colors.BufferVisibleSign,   bg=colors.bg },
	BufferVisibleTarget       = { fg=colors.BufferVisibleTarget, bg=colors.bg, style = "bold" },
	BufferSelected            = { bg=colors.BufferSelected},

	-- Tabs
	TabSelectedFG        = { fg=colors.TabSelectedFG },
	TabSelectedBG        = { bg=colors.TabSelectedBG },
	TabFG                = { fg=colors.TabFG},
	TabBG                = { bg=colors.TabBG},
	-----------------------------------------


	-- Cmp: github.com/hrsh7th/nvim-cmp
	-----------------------------------------
	CmpDocumentation       = { fg=colors.CmpDocumentation,      bg=colors.none },
	CmpDocumentationBorder = { fg=colors.CmpDocumentationBorder,bg=colors.none },
	CmpItemAbbr            = { fg=colors.CmpItemAbbr,           bg=colors.none },
	CmpItemAbbrDeprecated  = { fg=colors.CmpItemAbbrDeprecated, bg=colors.none },
	CmpItemAbbrMatch       = { fg=colors.CmpItemAbbrMatch,      bg=colors.none },
	CmpItemAbbrMatchFuzzy  = { fg=colors.CmpItemAbbrMatchFuzzy, bg=colors.none },
	CmpItemMenu            = { fg=colors.CmpItemMenu,           bg=colors.none },
	-- icon colors
	CmpItemKind            = { fg=colors.CmpItemKind,           bg=colors.none },
	CmpItemKindClass       = { fg=colors.CmpItemKindClass,      bg=colors.none },
	CmpItemKindFunction    = { fg=colors.CmpItemKindFunction,   bg=colors.none },
	CmpItemKindInterface   = { fg=colors.CmpItemKindInterface,  bg=colors.none },
	CmpItemKindKeyword     = { fg=colors.CmpItemKindKeyword,    bg=colors.none },
	CmpItemKindMethod      = { fg=colors.CmpItemKindMethod,     bg=colors.none },
	CmpItemKindProperty    = { fg=colors.CmpItemKindProperty,   bg=colors.none },
	CmpItemKindText        = { fg=colors.CmpItemKindText,       bg=colors.none },
	CmpItemKindUnit        = { fg=colors.CmpItemKindUnit,       bg=colors.none },
	CmpItemKindVariable    = { fg=colors.CmpItemKindVariable,   bg=colors.none },
	-----------------------------------------


	-- Dashboard: github.com/glepnir/dashboard-nvim
	-----------------------------------------
	DashboardCenter = { fg=colors.DashboardCenter },
	DashboardFooter = { fg=colors.DashboardFooter },
	DashboardHeader = { fg=colors.DashboardHeader },
	-----------------------------------------


	--  Debug:
	-----------------------------------------
	debugBreakpoint = { fg=colors.debugBreakpoint, style="reverse" },
	debugPc         = { bg=colors.debugPc },
	-----------------------------------------


	-- Diffview
	-----------------------------------------
	DiffViewNormal             = { fg=colors.DiffViewNormal, bg=colors.second_bg },
	DiffviewFilePanelDeletion  = { fg=colors.DiffviewFilePanelDeletion },
	DiffviewFilePanelInsertion = { fg=colors.DiffviewFilePanelInsertion },
	DiffviewStatusAdded        = { fg=colors.DiffviewStatusAdded },
	DiffviewStatusDeleted      = { fg=colors.DiffviewStatusDeleted },
	DiffviewStatusModified     = { fg=colors.DiffviewStatusModified },
	DiffviewStatusRenamed      = { fg=colors.DiffviewStatusRenamed },
	DiffviewVertSplit          = { bg=colors.bg },
	-----------------------------------------


	-- Gitsigns: github.com/lewis6991/gitsigns.nvim
	-----------------------------------------
	GitSignsAdd       = { fg=colors.GitAdd },
	GitSignsChange    = { fg=colors.GitChange },
	GitSignsDelete    = { fg=colors.GitDelete },
	GitSignsUntracked = { fg=colors.GitUntracked },
	-----------------------------------------


	-- gitgutter: github.com/airblade/vim-gitgutter
	-----------------------------------------
	GitGutterAdd    = { fg=colors.GitGutterAddFG,    bg=colors.GitGutterAddBG },
	GitGutterChange = { fg=colors.GitGutterChangeFG, bg=colors.GitGutterChangeBG },
	GitGutterDelete = { fg=colors.GitGutterDeleteFG, bg=colors.GitGutterDeleteBG },
	-----------------------------------------


	-- Indent-blankline: github.com/lukas-reineke/indent-blankline.nvim
	-----------------------------------------
	IndentBlanklineChar        = { fg=colors.IndentBlanklineChar },
	IndentBlanklineContextChar = { fg=colors.IndentBlanklineContextChar },-- current Curosr Highlighted function
	IndentBlanklineSpaceChar   = { fg=colors.IndentBlanklineSpaceChar }, -- cursor color on indent space
	IndentBlanklineIndent1     = { fg=colors.IndentBlanklineIndent1 },
	IndentBlanklineIndent2     = { fg=colors.IndentBlanklineIndent2 },
	IndentBlanklineIndent3     = { fg=colors.IndentBlanklineIndent3 },
	IndentBlanklineIndent4     = { fg=colors.IndentBlanklineIndent4 },
	IndentBlanklineIndent5     = { fg=colors.IndentBlanklineIndent5 },
	IndentBlanklineIndent6     = { fg=colors.IndentBlanklineIndent6 },
	IndentBlanklineIndent7     = { fg=colors.IndentBlanklineIndent7 },
	IndentBlanklineIndent8     = { fg=colors.IndentBlanklineIndent8 },
	-----------------------------------------


	-- Lsp: neovim.io/doc/user/lsp.html
	-----------------------------------------
	DiagnosticError           = { fg=colors.DiagnosticError },
	DiagnosticFloatingError   = { fg=colors.DiagnosticFloatingError },
	DiagnosticFloatingHint    = { fg=colors.DiagnosticFloatingHint },
	DiagnosticFloatingInfo    = { fg=colors.DiagnosticFloatingInfo },
	DiagnosticFloatingWarn    = { fg=colors.DiagnosticFloatingWarn },
	DiagnosticHint            = { fg=colors.DiagnosticHint },
	DiagnosticInfo            = { fg=colors.DiagnosticInfo },
	DiagnosticSignError       = { fg=colors.DiagnosticSignError },
	DiagnosticSignHint        = { fg=colors.DiagnosticSignHint },
	DiagnosticSignInfo        = { fg=colors.DiagnosticSignInfo },
	DiagnosticSignWarn        = { fg=colors.DiagnosticSignWarn },
	DiagnosticUnderlineError  = { style="underline" },
	DiagnosticUnderlineHint   = { style="underline" },
	DiagnosticUnderlineInfo   = { style="underline" },
	DiagnosticUnderlineWarn   = { style="underline" },
	DiagnosticVirtualTextError= { fg=colors.DiagnosticVirtualTextError },
	DiagnosticVirtualTextHint = { fg=colors.DiagnosticVirtualTextHint },
	DiagnosticVirtualTextInfo = { fg=colors.DiagnosticVirtualTextInfo },
	DiagnosticVirtualTextWarn = { fg=colors.DiagnosticVirtualTextWarn },
	DiagnosticWarn            = { fg=colors.DiagnosticWarn },
	-----------------------------------------


	-- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim
	-----------------------------------------
	LspSagaLightBulb = { fg=colors.LspSagaLightBulb, bg='NONE' },


	-- fidget.nvim: https://github.com/j-hui/fidget.nvim
	-----------------------------------------
	FidgetTitle = { fg=colors.FidgetTitle, bg='NONE', style="bold" },
	FidgetTask  = { fg=colors.FidgetTask,  bg='NONE' },
	-----------------------------------------


	-- vim-indent-guides: github.com/nathanaelkane/vim-indent-guides
	-----------------------------------------
	IndentGuidesEven = { fg=colors.IndentGuidesEven },
	IndentGuidesOdd  = { fg=colors.IndentGuidesOdd },
	-----------------------------------------


	-- flutter-tools.nvim: github.com/akinsho/flutter-tools.nvim/
	-----------------------------------------
	FlutterWidgetGuides = { fg=colors.FlutterWidgetGuides },
	-----------------------------------------


	-- Neogit: github.com/TimUntersberger/neogit
	-----------------------------------------
	NeogitBranch               = { fg=colors.NeogitBranch },
	NeogitDiffAdd              = { fg=colors.NeogitDiffAdd,    bg=colors.second_bg },
	NeogitDiffContext          = { fg=colors.NeogitDiffContext,bg=colors.bg },
	NeogitDiffDelete           = { fg=colors.NeogitDiffDelete, bg=colors.second_bg },
	NeogitHunkHeader           = { fg=colors.NeogitHunkHeader, bg=colors.second_bg },
	-- Neogit...Highlight is when group is focused
	NeogitDiffAddHighlight     = { fg=colors.NeogitDiffAdd,     bg=colors.second_bg },
	NeogitDiffContextHighlight = { fg=colors.NeogitDiffContext, bg=colors.bg },
	NeogitDiffDeleteHighlight  = { fg=colors.NeogitDiffDelete,  bg=colors.second_bg },
	NeogitHunkHeaderHighlight  = { fg=colors.NeogitHunkHeader,  bg=colors.second_bg },
	NeogitRemote               = { fg=colors.NeogitRemote },
	-----------------------------------------


	-- Nvim-tree: github.com/kyazdani42/nvim-tree.lua
	-----------------------------------------
	NvimTreeCursorLine   = { fg=colors.NvimTreeCursorLineFG, bg=colors.NvimTreeCursorLinebG },
	NvimTreeExecFile     = { fg=colors.NvimTreeExecFile },
	NvimTreeFolderIcon   = { fg=colors.NvimTreeFolderIcon },
	NvimTreeFolderName   = { fg=colors.NvimTreeFolderName },
	NvimTreeGitDeleted   = { fg=colors.NvimTreeGitDeleted },
	NvimTreeGitDirty     = { fg=colors.NvimTreeGitDirty },
	NvimTreeGitMerge     = { fg=colors.NvimTreeGitMerge },
	NvimTreeGitNew       = { fg=colors.NvimTreeGitNew },
	NvimTreeGitRenamed   = { fg=colors.NvimTreeGitRenamed },
	NvimTreeGitStaged    = { fg=colors.NvimTreeGitStaged },
	NvimTreeImageFile    = { fg=colors.NvimTreeImageFile },
	NvimTreeIndentMarker = { fg=colors.NvimTreeIndentMarker },
	NvimTreeNormal       = { fg=colors.NvimTreeNormal, bg=colors.bg },
	NvimTreeRootFolder   = { fg=colors.NvimTreeRootFolder, style = "bold" },
	NvimTreeSpecialFile  = { fg=colors.NvimTreeSpecialFile },
	NvimTreeSymlink      = { fg=colors.NvimTreeSymlink },
	NvimTreeVertSplit    = { fg=colors.NvimTreeVertSplit, bg=colors.bg },
	NvimTreeOpenedFolderName = { fg=colors.NvimTreeOpenedFolderName, style = "italic" },
	-----------------------------------------


	-- Nvim-tree: github.com/nvim-neo-tree/neo-tree.nvim
	-----------------------------------------
	NeoTreeIndentMarker = { fg=colors.NeoTreeIndentMarker },
	NeoTreeExpander     = { fg=colors.NeoTreeExpander },
	NeoTreeFileIcon     = { fg=colors.NeoTreeFileIcon },
	NeoTreeModified     = { fg=colors.NeoTreeModified },
	NeoTreeFileName     = { fg=colors.NeoTreeFileName },


	-- telescope: github.com/nvim-telescope/telescope.nvim
	-----------------------------------------
	TelescopeBorder       = { fg=colors.TelescopeBorder, bg = config.transparent_background and "NONE" or colors.bg, },
	TelescopeMatching     = { fg=colors.TelescopeMatching },
	TelescopePromptPrefix = { fg=colors.TelescopePromptPrefix },
	TelescopeSelection    = { fg=colors.TelescopeSelectionFG, bg=colors.TelescopeSelectionBG },
	-----------------------------------------


	-- https://github.com/folke/trouble.nvim
	-----------------------------------------
	-- TroubleTextInformation = { fg=colors.red, bg=colors.green },
	TroubleFile      = { fg=colors.TroubleFile,      bg="NONE" }, -- the source file that has error
	TroubleFoldIcon  = { fg=colors.TroubleFoldIcon,  bg="NONE" }, -- fold icon color
	TroubleCount     = { fg=colors.TroubleCountFG,   bg=colors.TroubleCountBG },
	TroubleTextError = { fg=colors.TroubleTextError, bg="NONE" }, -- error info text
	TroubleNormal    = { fg=colors.TroubleNormal,    bg="NONE" }, -- background color of trouble window
	TroubleLocation  = { fg=colors.TroubleLocation,  bg="NONE" }, -- location of error
	TroubleIndent    = { fg=colors.TroubleIndent,    bg="NONE" }, -- indent color
	TroubleSignError = { fg=colors.TroubleSignError, bg="NONE" }, -- error sign color
	TroubleSignWarn  = { fg=colors.TroubleSignWarn,  bg="NONE" }, -- Warn sign color
	TroubleCode      = { fg=colors.TroubleCode,      bg="NONE" },
	TroubleSignHint  = { fg=colors.TroubleSignHint,  bg="NONE" },
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

	-----------------------------------------
	-- end PLUGIN SPECIFIC
	-----------------------------------------


	-----------------------------------------
	-- LANGUAGE SYNTAX
	-----------------------------------------


	-- Markdown
	-----------------------------------------
	markdownH1               = { fg=colors.markdownH },
	markdownH2               = { fg=colors.markdownH },
	markdownH3               = { fg=colors.markdownH },
	markdownH4               = { fg=colors.markdownH },
	markdownH5               = { fg=colors.markdownH },
	markdownH6               = { fg=colors.markdownH },
	markdownId               = { fg=colors.markdownId },
	markdownUrl              = { fg=colors.markdownUrl, style = "underline" },
	markdownRule             = { fg=colors.markdownRule },
	markdownBold             = { fg=colors.markdownBold, style = "bold" },
	markdownCode             = { fg=colors.markdownCode },
	markdownItalic           = { fg=colors.markdownItalic, style = "italic" },
	markdownCodeBlock        = { fg=colors.markdownCodeBlock },
	markdownCodeError        = { fg=colors.markdownCodeError },
	markdownLinkText         = { fg=colors.markdownLinkText },
	markdownListMarker       = { fg=colors.markdownListMarker },
	markdownCodeSpecial      = { fg=colors.markdownCodeSpecial },
	markdownCodeDelimiter    = { fg=colors.markdownCodeDelimiter },
	markdownBlockquote       = { fg=colors.markdownBlockquote },
	markdownIdDeclaration    = { fg=colors.markdownIdDeclaration },
	markdownIdDelimiter      = { fg=colors.markdownIdDelimiter },
	markdownLinkDelimiter    = { fg=colors.markdownLinkDelimiter },
	markdownHeadingRule      = { fg=colors.markdownHeadingRule },
	markdownHeadingDelimiter = { fg=colors.markdownHeadingDelimiter },
	markdownUrlTitleDelimiter= { fg=colors.markdownUrlTitleDelimiter },
	markdownOrderedListMarker= { fg=colors.markdownOrderedListMarker },

	-----------------------------------------


	-- HTML language:
	-----------------------------------------
	htmlArg = { style="italic" },
	-----------------------------------------


	-- CSS / SASS / SCSS
	-----------------------------------------
	cssFlexibleBoxAttr  = { fg=colors.FlexibleBoxAttr, style="italic" },-- example -> center
	cssColor            = { fg=colors.Color,           style="italic" },-- example -> green, red, blue
	cssUnitDecorators   = { style="italic" }, -- exaple -> rem, em, px,
	cssTagName          = { fg=colors.TagName,         style="NONE" },-- only changes bold/italic| example -> body, html
	cssBoxProp          = { fg=colors.BoxProp },
	cssBraces           = { fg=colors.Braces },
	cssUIProp           = { fg=colors.UIProp },

	sassDefinition      = { fg=colors.Definition },
	sassProperty        = { fg=colors.Property },
	sassCssAttribute    = { fg=colors.Attribute },
	sassInclude         = { fg=colors.Include },

	cssTSPunctDelimiter = { fg=colors.PunctDelimiter, style="NONE" },-- example -> :
	cssTSPunctBracket   = { fg=colors.PunctBracket,   style="NONE" },-- example -> { },()
	cssTSProperty       = { fg=colors.Property,       style="NONE" },-- example -> background-color, display, text-align
	cssTSType           = { fg=colors.Type,           style="NONE" },-- only changes color | example -> body, html

	scssTSProperty      = { fg=colors.Property },
	scssTSPunctBracket  = { fg=colors.PunctBracket },
	-----------------------------------------


	-- JSON Language
	-----------------------------------------
	jsonLabel        = { fg=colors.Label,          style="NONE" },
	jsonKeyword      = { fg=colors.Label,          style="NONE" },
	jsonKeywordMatch = { fg=colors.KeywordMatch,   style="bold" },
	jsonString       = { fg=colors.String,         style="italic" },

	jsonTSLabel        = { fg=colors.Label,        style="NONE" },
	jsonTSPunctBracket = { fg=colors.PunctBracket, style="bold" },
	-----------------------------------------


	-- MAKE Language
	-----------------------------------------
	cmakeCommand              = { fg=colors.Command },
	cmakeArguments            = { fg=colors.Arguments },
	cmakeKWvariable_watch     = { fg=colors.KWvariable_watch },
	cmakeKWproject            = { fg=colors.KWproject },
	cmakeGeneratorExpressions = { fg=colors.GeneratorExpressions },
	cmakeVariable             = { fg=colors.Variable },
	cmakeKWuse_mangled_mesa   = { fg=colors.fg, style = "italic" },
	cmakeTSVariable           = { fg=colors.Variable },
	-----------------------------------------


	-----------------------------------------
	-- end LANGUAGE SYNTAX
	-----------------------------------------


	-----------------------------------------
	-- treesitter:  github.com/nvim-treesitter/nvim-treesitter
	-----------------------------------------

	TSTitle              = { fg=colors.Title,      style="NONE" },
	TSURI                = { fg=colors.URI,        style="underline" },
	TSVariable           = { fg=colors.Variable,   style="NONE" },
	TSParameter          = { fg=colors.Parameter,  style="italic" },
	TSComment            = { fg=colors.Comment,    style="italic" },
	TSKeyword            = { fg=colors.Keyword,    style="NONE" },
	TSType               = { fg=colors.Type,       style="NONE" },
	TSError              = { fg=colors.Error,      tyle="bold" },
	TSInclude            = { fg=colors.Include },
	TSString             = { fg=colors.String },
	TSFunction           = { fg=colors.Function },
	TSKeywordFunction    = { fg=colors.KeywordFunction, style="NONE" },
	TSKeywordReturn      = { fg=colors.KeywordReturn },
	TSKeywordOperator    = { fg=colors.KeywordOperator },
	TSOperator           = { fg=colors.Operator },
	TSConditional        = { fg=colors.Conditional },
	TSException          = { fg=colors.Exception },
	TSBoolean            = { fg=colors.Boolean },
	TSNumber             = { fg=colors.Number },
	TSMethod             = { fg=colors.Method },
	TSConstructor        = { fg=colors.Constructor },
	TSFuncBuiltin        = { fg=colors.FuncBuiltin },
	TSWarning            = { fg=colors.Warning },
	TSNote               = { fg=colors.Note },
	TSTag                = { fg=colors.Tag },
	TSTagAttribute       = { fg=colors.TagAttribute },
	TSAnnotation         = { fg=colors.Annotation },
	TSAttribute          = { fg=colors.Attribute },
	TSCharacter          = { fg=colors.Character },
	TSConstBuiltin       = { fg=colors.ConstBuiltin },
	TSConstMacro         = { fg=colors.ConstMacro },
	TSConstant           = { fg=colors.Constant },
	TSField              = { fg=colors.Field },
	TSFloat              = { fg=colors.Float },
	TSFuncMacro          = { fg=colors.FuncMacro },
	TSLabel              = { fg=colors.Label },
	TSLiteral            = { fg=colors.Literal },
	TSNamespace          = { fg=colors.Namespace },
	TSProperty           = { fg=colors.Property },
	TSPunctBracket       = { fg=colors.PunctBracket },
	TSPunctDelimiter     = { fg=colors.PunctDelimiter },
	TSPunctSpecial       = { fg=colors.PunctSpecial },
	TSRepeat             = { fg=colors.Repeat },
	TSStringEscape       = { fg=colors.StringEscape },
	TSStringRegex        = { fg=colors.StringRegex },
	TSStrong             = { fg=colors.Strong },
	TSStructure          = { fg=colors.Structure },
	TSSymbol             = { fg=colors.Symbol },
	TSTagDelimiter       = { fg=colors.TagDelimiter },
	TSText               = { fg=colors.Text },
	TSQueryLinterError   = { fg=colors.QueryLinterError },
	TSTypeBuiltin        = { fg=colors.TypeBuiltin },
	TSVariableBuiltin    = { fg=colors.VariableBuiltin },
	TSParameterReference = { fg=colors.ParameterReference },
	TSEmphasis           = { style = "italic" },
	TSUnderline          = { style = "underline" },
	-----------------------------------------
}

return M

