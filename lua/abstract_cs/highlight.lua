local M = {}

---@param colors COLORS
---@return table<string, vim.api.keyset.highlight>
M.highlights = function(colors)
	return {
		-----------------------------------------
		--  Editor settings
		-----------------------------------------

		--  completion menu
		Pmenu               = { fg = colors.Pmenu, bg = colors.bg }, -- completion window border color and background color
		PmenuSel            = { fg = colors.PmenuSelFG, bg = colors.PmenuSelBG },
		PmenuThumb          = { bg = colors.PmenuThumb },

		NormalFloat         = { link = "Pmenu" },               -- floating window
		Folded              = { fg = colors.FoldedFG, bg = colors.FoldedBG },
		LineNr              = { fg = colors.LineNr, bg = colors.bg }, -- number column
		CursorLineNr        = { fg = colors.CursorLineNrFG, bg = colors.CursorLineNrBG, bold = true },
		Cursor              = { fg = colors.Cursor, bg = colors.bg },
		CursorColumn        = { fg = "NONE", bg = "NONE" },
		CursorLine          = { bg = colors.CursorLine },
		SignColumn          = { fg = colors.bg, bg = colors.bg },
		ColorColumn         = { bg = colors.bg },
		Conceal             = { fg = colors.fg },
		QuickFixLine        = { bg = colors.QuickFixLine },
		WarningMsg          = { fg = colors.WarningMsgFG, bg = colors.WarningMsgBG },
		Search              = { fg = colors.SearchFG, bg = colors.SearchBg },
		CurSearch           = { fg = colors.SearchFG, bg = colors.CurSearch },
		lCursor             = { fg = colors.lCursorFG, bg = colors.lCursorBG },
		TermCursor          = { fg = colors.lCursorFG, bg = colors.lCursorBG },
		StatusLine          = { fg = colors.StatusLine, bg = colors.StatusLine },
		StatusLineNC        = { fg = colors.StatusLineNCFG, bg = colors.StatusLineNCBG },
		Delimiter           = { fg = colors.Delimiter },
		DiffAdd             = { fg = colors.DiffAdd },
		DiffAdded           = { link = "DiffAdd" },
		DiffChange          = { fg = colors.DiffChange },
		DiffDelete          = { fg = colors.DiffDelete },
		DiffRemoved         = { link = "DiffDelete" },
		DiffText            = { fg = colors.DiffText },
		DiffFile            = { fg = colors.DiffFile },
		StatusLineSeparator = { fg = colors.StatusLineSeparator },
		Underline           = { underline = true },
		MatchParen          = { fg = colors.MatchParenFG, bg = colors.MatchParenBG },
		MatchParenCur       = { underline = true },
		MatchWord           = { underline = true },
		MatchWordCur        = { underline = true },
		MoreMsg             = { fg = colors.MoreMsg },
		ModeMsg             = { fg = colors.fg, bg = colors.bg },
		Normal              = { fg = colors.fg, bg = colors.bg, },
		Error               = { fg = colors.Error, bg = colors.bg, bold = true },
		ErrorMsg            = { fg = colors.ErrorMsg, bg = colors.bg, bold = true }, -- command error message
		Visual              = { fg = "NONE", bg = colors.Visual, bold = true },
		TabLineSel          = { fg = colors.fg, bg = colors.TabLineSel },
		TabLineCurrentWin   = { fg = colors.TabLineCurrentWin, bg = colors.TabLineBG }, -- its non standard highlight group defined for tabby.nvim

		-- LANGUAGE SYNTAX

		Comment             = { fg = colors.Comment, italic = true },
		Constant            = { fg = colors.Constant },
		Identifier          = { fg = colors.Identifier },
		NonText             = { fg = colors.NonText },
		Operator            = { fg = colors.Operator },
		PreProc             = { fg = colors.PreProc },
		Question            = { fg = colors.Question },
		Special             = { fg = colors.Special },
		SpecialKey          = { fg = colors.SpecialKey, bold = true },
		SpellBad            = { fg = colors.SpellBad, underline = true },
		SpellCap            = { fg = colors.SpellCap, underline = true },
		SpellLocal          = { fg = colors.SpellLocal, underline = true },
		SpellRare           = { fg = colors.SpellRare, underline = true },
		Statement           = { fg = colors.Statement },
		String              = { fg = colors.String },
		Title               = { link = "Text" },
		Todo                = { fg = colors.TodoFG, bg = "NONE", bold = true },
		Type                = { fg = colors.Type },
		Variable            = { fg = colors.Variable },
		URI                 = { fg = colors.URI, underline = true },
		Parameter           = { fg = colors.Parameter, italic = true },
		KeywordFunction     = { fg = colors.KeywordFunction },
		KeywordReturn       = { fg = colors.KeywordReturn },
		KeywordOperator     = { fg = colors.KeywordOperator },
		Method              = { fg = colors.Method },
		Constructor         = { fg = colors.Constructor },
		FuncBuiltin         = { fg = colors.FuncBuiltin },
		Warning             = { fg = colors.Warning },
		Note                = { fg = colors.Note },
		TagAttribute        = { link = "Tag" },
		Annotation          = { fg = colors.Annotation },
		Attribute           = { fg = colors.Attribute },
		ConstBuiltin        = { fg = colors.ConstBuiltin },
		ConstMacro          = { fg = colors.ConstMacro },
		Field               = { fg = colors.Field },
		FuncMacro           = { fg = colors.FuncMacro },
		Literal             = { fg = colors.Literal },
		Namespace           = { fg = colors.Namespace },
		Property            = { fg = colors.Property },
		PunctBracket        = { fg = colors.PunctBracket },
		TableBlock          = { fg = colors.TableBlock },
		PunctDelimiter      = { fg = colors.PunctDelimiter },
		PunctSpecial        = { fg = colors.PunctSpecial },
		StringEscape        = { link = "StringRegex" },
		StringRegex         = { fg = colors.StringRegex },
		Strong              = { fg = colors.Strong },
		Symbol              = { fg = colors.Symbol },
		TagDelimiter        = { link = "Tag" },
		Text                = { fg = colors.Text },
		QueryLinterError    = { fg = colors.QueryLinterError },
		TypeBuiltin         = { fg = colors.TypeBuiltin },
		VariableBuiltin     = { fg = colors.VariableBuiltin },
		ParameterReference  = { fg = colors.ParameterReference },
		Emphasis            = { italic = true },


		-----------------------------------------
		-- Links

		Boolean                         = { link = "Constant" },
		Character                       = { link = "Constant" },
		Conditional                     = { link = "Statement" },
		CursorIM                        = { link = "Cursor" },
		CursorLineFold                  = { link = "FoldColumn" },
		CursorLineSign                  = { link = "SignColumn" },
		Debug                           = { link = "Special" },
		Define                          = { link = "PreProc" },
		EndOfBuffer                     = { link = "NonText" },
		Exception                       = { link = "Statement" },
		Float                           = { link = "Number" },
		FloatBorder                     = { link = "NormalFloat" },
		FloatFooter                     = { link = "FloatTitle" },
		FloatTitle                      = { link = "Title" },
		FoldColumn                      = { link = "SignColumn" },
		Ignore                          = { link = "Normal" },
		IncSearch                       = { link = "CurSearch" },
		Include                         = { link = "PreProc" },
		Keyword                         = { link = "Statement" },
		Label                           = { link = "Statement" },
		LineNrAbove                     = { link = "LineNr" },
		LineNrBelow                     = { link = "LineNr" },
		Macro                           = { link = "PreProc" },
		MsgArea                         = { link = "NONE" },
		MsgSeparator                    = { link = "StatusLine" },
		NormalNC                        = { link = "NONE" },
		Number                          = { link = "Constant" },
		PmenuExtra                      = { link = "Pmenu" },
		PmenuExtraSel                   = { link = "PmenuSel" },
		PmenuKind                       = { link = "Pmenu" },
		PmenuKindSel                    = { link = "PmenuSel" },
		PmenuMatch                      = { link = "Pmenu" },
		PmenuMatchSel                   = { link = "PmenuSel" },
		PmenuSbar                       = { link = "Pmenu" },
		PreCondit                       = { link = "PreProc" },
		Repeat                          = { link = "Statement" },
		SnippetTabstop                  = { link = "Visual" },
		SpecialChar                     = { link = "Special" },
		SpecialComment                  = { link = "Special" },
		StatusLineTerm                  = { link = "StatusLine" },
		StatusLineTermNC                = { link = "StatusLineNC" },
		StorageClass                    = { link = "Type" },
		Structure                       = { link = "Type" },
		Substitute                      = { link = "Search" },
		TabLine                         = { bg = colors.TabLineBG },
		TabLineFill                     = { bg = colors.StatusLine },
		Tag                             = { fg = colors.Tag },
		TermCursorNC                    = { link = "NONE" },
		Typedef                         = { link = "Type" },
		VertSplit                       = { link = "WinSeparator" },
		VisualNOS                       = { link = "Visual" },
		Whitespace                      = { fg = colors.Whitespace },
		WildMenu                        = { link = "PmenuSel" },
		WinSeparator                    = { link = "Normal" },

		-----------------------------------------
		-- treesitter:  github.com/nvim-treesitter/nvim-treesitter
		-----------------------------------------

		["@attribute"]                  = { link = "Macro" },
		["@attribute.builtin"]          = { link = "Special" },
		["@boolean"]                    = { link = "Boolean" },
		["@character"]                  = { link = "Character" },
		["@character.special"]          = { link = "SpecialChar" },
		["@comment"]                    = { link = "Comment" },
		["@comment.error"]              = { link = "DiagnosticError" },
		["@comment.note"]               = { link = "DiagnosticInfo" },
		["@comment.todo"]               = { link = "Todo" },
		["@comment.warning"]            = { link = "DiagnosticWarn" },
		["@conceal"]                    = { link = "Conceal" },
		["@constant"]                   = { link = "Constant" },
		["@constant.builtin"]           = { link = "Special" },
		["@constructor"]                = { link = "Special" },
		["@diff.delta"]                 = { link = "Changed" },
		["@diff.minus"]                 = { link = "Removed" },
		["@diff.plus"]                  = { link = "Added" },
		["@function"]                   = { link = "Function" },
		["@function.builtin"]           = { link = "Special" },
		["@keyword"]                    = { link = "Keyword" },
		["@label"]                      = { link = "Label" },
		["@lsp.mod.deprecated"]         = { link = "DiagnosticDeprecated" },
		["@lsp.type.class"]             = { link = "@type" },
		["@lsp.type.comment"]           = { link = "@comment" },
		["@lsp.type.decorator"]         = { link = "@attribute" },
		["@lsp.type.enum"]              = { link = "@type" },
		["@lsp.type.enumMember"]        = { link = "@constant" },
		["@lsp.type.event"]             = { link = "@type" },
		["@lsp.type.function"]          = { link = "@function" },
		["@lsp.type.interface"]         = { link = "@type" },
		["@lsp.type.keyword"]           = { link = "@keyword" },
		["@lsp.type.macro"]             = { link = "@constant.macro" },
		["@lsp.type.method"]            = { link = "@function.method" },
		["@lsp.type.modifier"]          = { link = "@type.qualifier" },
		["@lsp.type.namespace"]         = { link = "@module" },
		["@lsp.type.number"]            = { link = "@number" },
		["@lsp.type.operator"]          = { link = "@operator" },
		["@lsp.type.parameter"]         = { link = "@variable.parameter" },
		["@lsp.type.property"]          = { link = "@property" },
		["@lsp.type.regexp"]            = { link = "@string.regexp" },
		["@lsp.type.string"]            = { link = "@string" },
		["@lsp.type.struct"]            = { link = "@type" },
		["@lsp.type.type"]              = { link = "@type" },
		["@lsp.type.typeParameter"]     = { link = "@type.definition" },
		["@lsp.type.variable"]          = { link = "@variable" },
		["@markup"]                     = { link = "Special" },
		["@markup.heading"]             = { link = "Title" },
		["@markup.italic"]              = { italic = true },
		["@markup.link"]                = { link = "Underline" },
		["@markup.strikethrough"]       = { strikethrough = true },
		["@markup.strong"]              = { bold = true },
		["@markup.underline"]           = { underline = true },
		["@module"]                     = { link = "Structure" },
		["@module.builtin"]             = { link = "Special" },
		["@number"]                     = { link = "Number" },
		["@number.float"]               = { link = "Float" },
		["@operator"]                   = { link = "Operator" },
		["@property"]                   = { link = "Identifier" },
		["@punctuation"]                = { link = "Delimiter" },
		["@punctuation.specia"]         = { link = "Special" },
		["@string"]                     = { link = "String" },
		["@string.escape"]              = { link = "@string.special" },
		["@string.regexp"]              = { link = "@string.special" },
		["@string.special"]             = { link = "SpecialChar" },
		["@string.special.url"]         = { link = "Underline" },
		["@tag"]                        = { link = "Tag" },
		["@tag.builtin"]                = { link = "Special" },
		["@type"]                       = { link = "Type" },
		["@type.builtin"]               = { link = "Special" },
		["@variable.builtin"]           = { link = "Special" },
		["@variable.parameter"]         = { italic = true },
		["@variable.parameter.builtin"] = { link = "Special" },


		-----------------------------------------
		-- LANGUAGE SYNTAX
		-----------------------------------------

		-- Markdown

		-- markdownH1                    = { link = "Title" },
		-- markdownH2                    = { link = "Title" },
		-- markdownH3                    = { link = "Title" },
		-- markdownH4                    = { link = "Title" },
		-- markdownH5                    = { link = "Title" },
		-- markdownH6                    = { link = "Title" },
		-- markdownId                    = { fg = colors.markId },
		-- markdownUrl                   = { fg = colors.markUrl, underline = true },
		-- markdownRule                  = { fg = colors.markRule },
		-- markdownBold                  = { fg = colors.markBold, bold = true },
		-- markdownCode                  = { fg = colors.markCode },
		-- markdownItalic                = { fg = colors.markItalic, italic = true },
		-- markdownCodeBlock             = { fg = colors.markCodeBlock },
		-- markdownCodeError             = { fg = colors.markCodeError },
		-- markdownLinkText              = { fg = colors.markLinkText },
		-- markdownListMarker            = { fg = colors.markList },
		-- markdownCodeSpecial           = { fg = colors.markCodeSpecial },
		-- markdownCodeDelimiter         = { fg = colors.markCodeDelimiter },
		-- markdownBlockquote            = { fg = colors.markQuote },
		-- markdownIdDeclaration         = { fg = colors.markIdDeclaration },
		-- markdownIdDelimiter           = { fg = colors.markIdDelimiter },
		-- markdownLinkDelimiter         = { fg = colors.markLinkDelimiter },
		-- markdownHeadingRule           = { fg = colors.markHeadingRule },
		-- markdownHeadingDelimiter      = { fg = colors.markHeadingDelimiter },
		-- markdownUrlTitleDelimiter     = { fg = colors.markUrlTitleDelimiter },
		-- markdownOrderedListMarker     = { fg = colors.markOrderedListMarker },

		-- HTML language:

		htmlArg                   = { italic = true },

		-- CSS / SASS / SCSS

		cssFlexibleBoxAttr        = { italic = true }, -- example -> center
		cssColor                  = { italic = true }, -- example -> green, red, blue
		cssUnitDecorators         = { italic = true }, -- exaple -> rem, em, px,
		cssTagName                = { link = "Tag" }, -- only changes bold/italic| example -> body, html
		cssBoxProp                = { link = "Property" },
		cssBraces                 = { link = "PunctBracket" },
		cssUIProp                 = { link = "Property" },

		sassDefinition            = { link = "Definition" },
		sassProperty              = { link = "Property" },
		sassCssAttribute          = { link = "Attribute" },
		sassInclude               = { link = "Include" },

		cssTSPunctDelimiter       = { link = "PunctDelimiter" }, -- example -> :
		cssTSPunctBracket         = { link = "PunctBracket" }, -- example -> { },()
		cssTSProperty             = { link = "Property" }, -- example -> background-color, display, text-align
		cssTSType                 = { link = "Type" },     -- only changes color | example -> body, html

		scssTSProperty            = { link = "Property" },
		scssTSPunctBracket        = { link = "PunctBracket" },

		-- JSON Language

		jsonLabel                 = { link = "Label" },
		jsonKeyword               = { link = "Label" },
		jsonKeywordMatch          = { link = "MatchWord", bold = true },
		jsonString                = { link = "String", italic = true },

		jsonTSLabel               = { link = "Label" },
		jsonTSPunctBracket        = { link = "PunctBracket", bold = true },

		-- MAKE Language

		cmakeCommand              = { link = "Function" },
		cmakeArguments            = { link = "Special" },
		cmakeKWvariable_watch     = { link = "Variable" },
		cmakeKWproject            = { link = "Function" },
		cmakeGeneratorExpressions = { link = "Special" },
		cmakeVariable             = { link = "Variable" },
		cmakeKWuse_mangled_mesa   = { italic = true },
		cmakeTSVariable           = { link = "Variable" },



		-----------------------------------------
		-- PLUGIN SPECIFIC
		-----------------------------------------

		-- Buffer: github.com/akinsho/nvim-bufferline.lua

		BufferCloseButtonSelected  = { fg = colors.fg, bg = colors.BufferCloseButtonSelected },
		BufferCurrent              = { fg = colors.BufferCurrentFg, bg = colors.BufferCurrentBg },
		BufferCurrentIndex         = { fg = colors.fg, bg = colors.bg },
		BufferCurrentMod           = { fg = colors.BufferCurrentMod, bg = colors.bg },
		BufferCurrentSign          = { fg = colors.BufferCurrentSign, bg = colors.bg },
		BufferCurrentTarget        = { fg = colors.BufferCurrentTarget, bg = colors.bg, bold = true },
		BufferInactive             = { fg = colors.BufferInactive, bg = colors.second_bg },
		BufferInactiveIndex        = { fg = colors.BufferInactiveIndex, bg = colors.second_bg },
		BufferInactiveMod          = { fg = colors.BufferInactiveMod, bg = colors.second_bg },
		BufferInactiveSign         = { fg = colors.BufferInactiveSign, bg = colors.second_bg },
		BufferInactiveTarget       = { fg = colors.BufferInactiveTarget, bg = colors.second_bg, bold = true },
		BufferIndicatorSelected    = { fg = colors.fg, bg = colors.BufferIndicatorSelected },
		BufferLineFill             = { fg = colors.fg, bg = colors.BufferLineFill, bold = true },
		BuffNumbers                = { fg = colors.fg, bg = colors.BuffNumbers },
		BufferVisible              = { fg = colors.fg, bg = colors.bg },
		BufferVisibleIndex         = { fg = colors.fg, bg = colors.bg },
		BufferVisibleMod           = { fg = colors.BufferVisibleMod, bg = colors.bg },
		BufferVisibleSign          = { fg = colors.BufferVisibleSign, bg = colors.bg },
		BufferVisibleTarget        = { fg = colors.BufferVisibleTarget, bg = colors.bg, bold = true },
		BufferSelected             = { bg = colors.BufferSelected },

		-- Tabs
		TabSelectedFG              = { fg = colors.TabSelectedFG },
		TabSelectedBG              = { bg = colors.TabSelectedBG },
		TabFG                      = { fg = colors.TabFG },
		TabBG                      = { bg = colors.TabBG },

		-- Blink.cmp: https://github.com/Saghen/blink.cmp
		BlinkCmpMenu               = { fg = colors.CmpMenu },    --  The completion menu window
		BlinkCmpMenuBorder         = { fg = colors.Border },     --  The completion menu window border
		BlinkCmpLabelMatch         = { fg = colors.CmpItemLabel }, --  (Currently unused) Label of the completion item when it matches the query
		BlinkCmpLabelDescription   = { fg = colors.CmpItemLabelDesc }, --  NonText	Label description of the completion item
		BlinkCmpDoc                = { fg = colors.CmpDoc },
		BlinkCmpDocBorder          = { fg = colors.Border },
		BlinkCmpGhostText          = { fg = colors.GhostText },     --  NonText	Preview item with ghost text
		-- BlinkCmpMenuSelection                = { fg = "", bg = "" }, --  PmenuSel	The completion menu window selected item
		-- BlinkCmpScrollBarThumb               = { fg = "", bg = "" }, --  PmenuThumb	The scrollbar thumb
		-- BlinkCmpScrollBarGutter              = { fg = "", bg = "" }, --  PmenuSbar	The scrollbar gutter
		-- BlinkCmpLabel                        = { fg = "", bg = "" }, --  Pmenu Label of the completion item
		-- BlinkCmpLabelDeprecated              = { fg = "", bg = "" }, --  NonText	Deprecated label of the completion item
		-- BlinkCmpLabelDetail                  = { fg = "", bg = "" }, --  NonText	Label description of the completion item
		-- BlinkCmpKind                         = { fg = "", bg = "" }, --  Special	Kind icon/text of the completion item
		-- BlinkCmpSource                       = { fg = "", bg = "" }, --  NonText	Source of the completion item
		-- BlinkCmpDocSeparator                 = { fg = "", bg = "" }, --  NormalFloat	The documentation separator between doc and detail
		-- BlinkCmpDocCursorLine                = { fg = "", bg = "" }, --  Visual	The documentation window cursor line
		-- BlinkCmpSignatureHelp                = { fg = "", bg = "" }, --  NormalFloat	The signature help window
		-- BlinkCmpSignatureHelpBorder          = { fg = "", bg = "" }, --  NormalFloat	The signature help window border
		-- BlinkCmpSignatureHelpActiveParameter = { fg = "", bg = "" }, --	 LspSignatureActiveParameter	Active parameter of the signature help

		-- Cmp: github.com/hrsh7th/nvim-cmp

		CmpItemMenu                = { fg = colors.CmpMenu },
		CmpDocumentation           = { fg = colors.CmpDoc },
		CmpDocumentationBorder     = { fg = colors.Border },
		CmpItemAbbrMatch           = { fg = colors.CmpItemLabel },
		CmpItemAbbr                = { link = "CmpDocumentation" },
		CmpItemAbbrDeprecated      = { link = "CmpDocumentationBorder" },
		CmpItemAbbrMatchFuzzy      = { link = "CmpItemAbbrMatch" },
		-- icon colors
		-- CmpItemKindClass           = { fg = "" },
		-- CmpItemKindFunction        = { fg = "" },
		-- CmpItemKindText            = { fg = "" },
		-- CmpItemKindKeyword         = { fg = "" },
		CmpItemKind                = { link = "CmpItemMenu" },
		CmpItemKindMethod          = { link = "CmpItemKindFunction" },
		CmpItemKindInterface       = { link = "CmpItemKindText" },
		CmpItemKindVariable        = { link = "CmpItemKindText" },
		CmpItemKindProperty        = { link = "CmpItemKindKeyword" },
		CmpItemKindUnit            = { link = "CmpItemKindKeyword" },

		-- Dashboard: github.com/glepnir/dashboard-nvim

		DashboardCenter            = { fg = colors.DashboardCenter },
		DashboardFooter            = { fg = colors.DashboardFooter },
		DashboardHeader            = { fg = colors.DashboardHeader },

		--  Debug:

		debugBreakpoint            = { fg = colors.debugBreakpoint, reverse = true },
		debugPc                    = { bg = colors.debugPc },

		-- Diffview

		DiffViewNormal             = { fg = colors.DiffViewNormal, bg = colors.second_bg },
		DiffviewFilePanelDeletion  = { fg = colors.DiffviewFilePanelDeletion },
		DiffviewFilePanelInsertion = { fg = colors.DiffviewFilePanelInsertion },
		DiffviewStatusAdded        = { fg = colors.DiffviewStatusAdded },
		DiffviewStatusDeleted      = { fg = colors.DiffviewStatusDeleted },
		DiffviewStatusModified     = { fg = colors.DiffviewStatusModified },
		DiffviewStatusRenamed      = { fg = colors.DiffviewStatusRenamed },
		DiffviewVertSplit          = { bg = colors.bg },

		-- Gitsigns: github.com/lewis6991/gitsigns.nvim

		GitSignsAdd                = { fg = colors.GitAdd },
		GitSignsChange             = { fg = colors.GitChange },
		GitSignsDelete             = { fg = colors.GitDelete },
		GitSignsUntracked          = { fg = colors.GitUntracked },
		GitSignsAddPreview         = { fg = colors.GitAddPreviewFG, bg = colors.GitAddPreviewBG },
		GitSignsDeletePreview      = { fg = colors.GitDeletePreviewFG, bg = colors.GitDeletePreviewBG },
		GitSignsDeleteVirtLn       = { fg = colors.GitDeletePreviewFG, bg = colors.GitDeletePreviewBG },
		GitSignsDeleteVirtLnInLine = { fg = colors.GitDeletePreviewFG, bg = colors.GitDeletePreviewBG },

		-- gitgutter: github.com/airblade/vim-gitgutter

		GitGutterAdd               = { fg = colors.GitGutterAddFG, bg = colors.GitGutterBG },
		GitGutterChange            = { fg = colors.GitGutterChangeFG, bg = colors.GitGutterBG },
		GitGutterDelete            = { fg = colors.GitGutterDeleteFG, bg = colors.GitGutterBG },

		-- Indent-blankline: github.com/lukas-reineke/indent-blankline.nvim

		IblIndent                  = { fg = colors.IblIndent },
		IblScope                   = { fg = colors.IblScope },
		IblContextChar             = { link = "IblScope" },  -- current Curosr Highlighted function
		IblSpaceChar               = { fg = colors.IblSpaceChar }, -- cursor color on indent space

		-- Lsp: neovim.io/doc/user/lsp.html


		DiagnosticError             = { fg = colors.DiagnosticError },
		DiagnosticHint              = { fg = colors.DiagnosticHint },
		DiagnosticInfo              = { fg = colors.DiagnosticInfo },
		DiagnosticUnnecessary       = { link = "Comment" },
		DiagnosticWarn              = { fg = colors.DiagnosticWarn },

		DiagnosticFloatingError     = { link = "DiagnosticError" },
		DiagnosticFloatingHint      = { link = "DiagnosticHint" },
		DiagnosticFloatingInfo      = { link = "DiagnosticInfo" },
		DiagnosticFloatingOk        = { link = "DiagnosticOk" },
		DiagnosticFloatingWarn      = { link = "DiagnosticWarn" },

		DiagnosticSignError         = { link = "DiagnosticError" },
		DiagnosticSignHint          = { link = "DiagnosticHint" },
		DiagnosticSignInfo          = { link = "DiagnosticInfo" },
		DiagnosticSignOk            = { link = "DiagnosticOk" },
		DiagnosticSignWarn          = { link = "DiagnosticWarn" },

		DiagnosticUnderlineError    = { sp = colors.DiagnosticError, underline = true, cterm = { underline = true } },
		DiagnosticUnderlineHint     = { sp = colors.DiagnosticHint, underline = true, cterm = { underline = true } },
		DiagnosticUnderlineInfo     = { sp = colors.DiagnosticInfo, underline = true, cterm = { underline = true } },
		DiagnosticUnderlineWarn     = { sp = colors.DiagnosticWarn, underline = true, cterm = { underline = true } },

		DiagnosticVirtualTextError  = { link = "DiagnosticError" },
		DiagnosticVirtualTextHint   = { link = "DiagnosticHint" },
		DiagnosticVirtualTextInfo   = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextOk     = { link = "DiagnosticOk" },
		DiagnosticVirtualTextWarn   = { link = "DiagnosticWarn" },

		LspCodeLens                 = { link = "NonText" },
		LspCodeLensSeparator        = { link = "LspCodeLens" },
		LspInlayHint                = { link = "NonText" },
		LspReferenceRead            = { link = "LspReferenceText" },
		LspReferenceText            = { link = "Visual" },
		LspReferenceWrite           = { link = "LspReferenceText" },
		LspSignatureActiveParameter = { link = "Visual" },


		-- lspsaga.nvim: https://github.com/glepnir/lspsaga.nvim

		LspSagaLightBulb              = { fg = colors.LspSagaLightBulb, bg = 'NONE' },

		-- fidget.nvim: https://github.com/j-hui/fidget.nvim

		FidgetTitle                   = { fg = colors.FidgetTitle, bg = 'NONE', bold = true },
		FidgetTask                    = { fg = colors.FidgetTask, bg = 'NONE' },

		-- vim-indent-guides: github.com/nathanaelkane/vim-indent-guides

		IndentGuidesEven              = { fg = colors.IndentGuidesEven },
		IndentGuidesOdd               = { fg = colors.IndentGuidesOdd },

		-- flutter-tools.nvim: github.com/akinsho/flutter-tools.nvim/

		FlutterWidgetGuides           = { fg = colors.FlutterWidgetGuides },

		-- Neogit: github.com/TimUntersberger/neogit

		NeogitBranch                  = { fg = colors.NeogitBranch },
		NeogitDiffAdd                 = { fg = colors.NeogitDiffAdd, bg = colors.second_bg },
		NeogitDiffContext             = { fg = colors.NeogitDiffContext, bg = colors.bg },
		NeogitDiffDelete              = { fg = colors.NeogitDiffDelete, bg = colors.second_bg },
		NeogitHunkHeader              = { fg = colors.NeogitHunkHeader, bg = colors.second_bg },
		-- Neogit...Highlight is when group is focused
		NeogitDiffAddHighlight        = { fg = colors.NeogitDiffAdd, bg = colors.second_bg },
		NeogitDiffContextHighlight    = { fg = colors.NeogitDiffContext, bg = colors.bg },
		NeogitDiffDeleteHighlight     = { fg = colors.NeogitDiffDelete, bg = colors.second_bg },
		NeogitHunkHeaderHighlight     = { fg = colors.NeogitHunkHeader, bg = colors.second_bg },
		NeogitRemote                  = { fg = colors.NeogitRemote },

		-- Nvim-tree: github.com/kyazdani42/nvim-tree.lua

		NvimTreeCursorLine            = { fg = colors.NvimTreeCursorLineFG, bg = colors.NvimTreeCursorLinebG },
		NvimTreeExecFile              = { fg = colors.NvimTreeExecFile },
		NvimTreeFolderIcon            = { fg = colors.NvimTreeFolder },
		NvimTreeFolderName            = { link = "NvimTreeFolderIcon" },
		NvimTreeGitDeleted            = { fg = colors.NvimTreeGitDeleted },
		NvimTreeGitDirty              = { fg = colors.NvimTreeGitDirty },
		NvimTreeGitMerge              = { fg = colors.NvimTreeGitMerge },
		NvimTreeGitNew                = { fg = colors.NvimTreeGitNew },
		NvimTreeGitRenamed            = { fg = colors.NvimTreeGitRenamed },
		NvimTreeGitStaged             = { fg = colors.NvimTreeGitStaged },
		NvimTreeImageFile             = { fg = colors.NvimTreeImageFile },
		NvimTreeNormal                = { fg = colors.NvimTreeNormal, bg = colors.bg },
		NvimTreeIndentMarker          = { fg = colors.NvimTreeIndentMarker },
		NvimTreeRootFolder            = { fg = colors.NvimTreeIndentMarker, bold = true },
		NvimTreeSpecialFile           = { fg = colors.NvimTreeSpecialFile },
		NvimTreeSymlink               = { fg = colors.NvimTreeSymlink },
		NvimTreeVertSplit             = { fg = colors.NvimTreeVertSplit, bg = colors.bg },
		NvimTreeOpenedFolderName      = { fg = colors.NvimTreeOpenedFolderName, italic = true },

		-- Nvim-tree: github.com/nvim-neo-tree/neo-tree.nvim

		NeoTreeIndentMarker           = { fg = colors.NeoTreeIndentMarker },
		NeoTreeExpander               = { fg = colors.NeoTreeExpander },
		NeoTreeFileIcon               = { fg = colors.NeoTreeFileIcon },
		NeoTreeModified               = { fg = colors.NeoTreeModified },
		NeoTreeFileName               = { fg = colors.NeoTreeFileName },

		-- snacks.nvim: github.com/folke/snacks.nvim

		SnacksIndent                  = { fg = colors.SnacksIndent },
		SnacksIndentChunk             = { fg = colors.SnacksIndentChunk },
		SnacksIndentScope             = { fg = colors.SnacksIndentScope },
		-- Dashboard
		SnacksDashboardDesc           = { fg = colors.SnacksDashboardDesc }, -- 	Description text in dashboard. default: Special
		SnacksDashboardDir            = { fg = colors.SnacksDashboardDir }, -- 	Directory items. Default: NonText
		SnacksDashboardNormal         = { fg = colors.SnacksDashboardNormal }, -- Normal for the dashboard. dedfault: Normal
		SnacksDashboardFile           = { link = "SnacksDashboardDir" }, -- 	Dashboard file items. Default: Special
		SnacksDashboardFooter         = { link = "SnacksDashboardDesc" }, -- Dashboard footer text. Default: Title
		SnacksDashboardHeader         = { link = "SnacksDashboardDesc" }, -- Dashboard header text. Default: Title
		SnacksDashboardIcon           = { link = "SnacksDashboardNormal" }, -- 	Dashboard icons. Detault: Special
		SnacksDashboardKey            = { link = "SnacksDashboardNormal" }, -- Keybind text. Detault: Number
		SnacksDashboardSpecial        = { link = "SnacksDashboardNormal" }, --	Special elements. Detault: Special
		SnacksDashboardTerminal       = { link = "SnacksDashboardTerminal" }, --	Terminal text. Detault. SnacksDashboardNormal
		SnacksDashboardTitle          = { link = "SnacksDashboardDesc" }, -- Title text. Detault: Title

		-- telescope: github.com/nvim-telescope/telescope.nvim

		TelescopeBorder               = { fg = colors.Border, bg = colors.bg },
		TelescopeMatching             = { fg = colors.TelescopeMatching },
		TelescopePromptPrefix         = { fg = colors.TelescopePromptPrefix },
		TelescopeSelection            = { fg = colors.TelescopeSelectionFG, bg = colors.TelescopeSelectionBG },

		-- https://github.com/folke/trouble.nvim

		-- TroubleTextInformation = { fg=colors.red, bg=colors.green },
		TroubleFile                   = { fg = colors.TroubleFile, bg = "NONE" }, -- the source file that has error
		TroubleCount                  = { fg = colors.TroubleFile, bg = colors.TroubleSignHint },
		TroubleTextError              = { fg = colors.TroubleTextError, bg = "NONE" }, -- error info text
		TroubleNormal                 = { fg = colors.TroubleNormal, bg = "NONE" }, -- background color of trouble window
		TroubleSignError              = { fg = colors.TroubleSignError, bg = "NONE" }, -- error sign color
		TroubleSignWarn               = { fg = colors.TroubleSignWarn, bg = "NONE" }, -- Warn sign color
		TroubleSignHint               = { fg = colors.TroubleSignHint, bg = "NONE" },
		TroubleIndentFoldClosed       = { fg = colors.fg, bg = "NONE" },
		TroubleFoldIcon               = { link = "TroubleSignError" }, -- fold icon color
		TroubleLocation               = { link = "TroubleSignHint" }, -- location of error
		TroubleIndent                 = { link = "TroubleFile" }, -- indent color
		TroubleCode                   = { link = "TroubleSignWarn" },
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

		-- https://github.com/SmiteshP/nvim-navic

		NavicText                     = { fg = colors.NavicText, bg = colors.bg, italic = true },
		NavicIconsBoolean             = { fg = colors.NavicIconsBoolean, bg = colors.bg, italic = true },
		NavicSeparator                = { link = "NavicIconsBoolean" },
		NavicIconsArray               = { link = "NavicIconsBoolean" },
		NavicIconsConstructor         = { link = "NavicIconsBoolean" },
		NavicIconsPackage             = { link = "NavicIconsBoolean" },
		NavicIconsTypeParameter       = { link = "NavicIconsBoolean" },
		NavicIconsEnum                = { fg = colors.NavicIconsEnum, bg = colors.bg, italic = true },
		NavicIconsEnumMember          = { link = "NavicIconsEnum" },
		NavicIconsField               = { link = "NavicIconsEnum" },
		NavicIconsProperty            = { link = "NavicIconsEnum" },
		NavicIconsVariable            = { link = "NavicIconsEnum" },
		NavicIconsFile                = { fg = colors.NavicIconsFile, bg = colors.bg, italic = true },
		NavicIconsMethod              = { fg = colors.NavicIconsMethod, bg = colors.bg, italic = true },
		NavicIconsFunction            = { link = "NavicIconsMethod" },
		NavicIconsEvent               = { link = "NavicIconsMethod" },
		NavicIconsObject              = { link = "NavicIconsMethod" },
		NavicIconsModule              = { fg = colors.NavicIconsModule, bg = colors.bg, italic = true },
		NavicIconsClass               = { link = "NavicIconsModule" },
		NavicIconsNumber              = { link = "NavicIconsModule" },
		NavicIconsNamespace           = { fg = colors.NavicIconsNamespace, bg = colors.bg, italic = true },
		NavicIconsConstant            = { link = "NavicIconsNamespace" },
		NavicIconsNull                = { fg = colors.NavicIconsNull, bg = colors.bg, italic = true },
		NavicIconsString              = { link = "NavicIconsNull" },
		NavicIconsStruct              = { link = "NavicIconsNull" },
		NavicIconsOperator            = { link = "NavicIconsNull" },
		NavicIconsInterface           = { link = "NavicIconsNull" },
		NavicIconsKey                 = { link = "NavicIconsNull" },

		-- https://github.com/folke/noice.nvim

		NoiceCmdlineIconCmdline       = { fg = colors.fg, bg = colors.bg },
		NoiceCmdlineIconSearch        = { fg = colors.NoiceCmdlineSearch, bg = colors.bg },
		NoiceCmdlinePopupBorder       = { link = "NoiceCmdlineIconCmdline" },
		NoiceCmdlinePopupBorderSearch = { link = "NoiceCmdlineIconSearch" },



		-----------------------------------------
		--  Other
		-----------------------------------------

		-- Highlight groups (links) used by parser:

		NvimAssignment                  = { link = "Operator" },
		NvimPlainAssignment             = { link = "NvimAssignment" },
		NvimAugmentedAssignment         = { link = "NvimAssignment" },
		NvimAssignmentWithAddition      = { link = "NvimAugmentedAssignment" },
		NvimAssignmentWithSubtraction   = { link = "NvimAugmentedAssignment" },
		NvimAssignmentWithConcatenation = { link = "NvimAugmentedAssignment" },

		NvimOperator                    = { link = "Operator" },

		NvimUnaryOperator               = { link = "NvimOperator" },
		NvimUnaryPlus                   = { link = "NvimUnaryOperator" },
		NvimUnaryMinus                  = { link = "NvimUnaryOperator" },
		NvimNot                         = { link = "NvimUnaryOperator" },

		NvimBinaryOperator              = { link = "NvimOperator" },
		NvimComparison                  = { link = "NvimBinaryOperator" },
		NvimComparisonModifier          = { link = "NvimComparison" },
		NvimBinaryPlus                  = { link = "NvimBinaryOperator" },
		NvimBinaryMinus                 = { link = "NvimBinaryOperator" },
		NvimConcat                      = { link = "NvimBinaryOperator" },
		NvimConcatOrSubscript           = { link = "NvimConcat" },
		NvimOr                          = { link = "NvimBinaryOperator" },
		NvimAnd                         = { link = "NvimBinaryOperator" },
		NvimMultiplication              = { link = "NvimBinaryOperator" },
		NvimDivision                    = { link = "NvimBinaryOperator" },
		NvimMod                         = { link = "NvimBinaryOperator" },

		NvimTernary                     = { link = "NvimOperator" },
		NvimTernaryColon                = { link = "NvimTernary" },

		NvimParenthesis                 = { link = "Delimiter" },
		NvimLambda                      = { link = "NvimParenthesis" },
		NvimNestingParenthesis          = { link = "NvimParenthesis" },
		NvimCallingParenthesis          = { link = "NvimParenthesis" },

		NvimSubscript                   = { link = "NvimParenthesis" },
		NvimSubscriptBracket            = { link = "NvimSubscript" },
		NvimSubscriptColon              = { link = "NvimSubscript" },
		NvimCurly                       = { link = "NvimSubscript" },

		NvimContainer                   = { link = "NvimParenthesis" },
		NvimDict                        = { link = "NvimContainer" },
		NvimList                        = { link = "NvimContainer" },

		NvimIdentifier                  = { link = "Identifier" },
		NvimIdentifierScope             = { link = "NvimIdentifier" },
		NvimIdentifierScopeDelimiter    = { link = "NvimIdentifier" },
		NvimIdentifierName              = { link = "NvimIdentifier" },
		NvimIdentifierKey               = { link = "NvimIdentifier" },

		NvimColon                       = { link = "Delimiter" },
		NvimComma                       = { link = "Delimiter" },
		NvimArrow                       = { link = "Delimiter" },

		NvimRegister                    = { link = "SpecialChar" },
		NvimNumber                      = { link = "Number" },
		NvimFloat                       = { link = "NvimNumber" },
		NvimNumberPrefix                = { link = "Type" },

		NvimOptionSigil                 = { link = "Type" },
		NvimOptionName                  = { link = "NvimIdentifier" },
		NvimOptionScope                 = { link = "NvimIdentifierScope" },
		NvimOptionScopeDelimiter        = { link = "NvimIdentifierScopeDelimiter" },

		NvimEnvironmentSigil            = { link = "NvimOptionSigil" },
		NvimEnvironmentName             = { link = "NvimIdentifier" },

		NvimString                      = { link = "String" },
		NvimStringBody                  = { link = "NvimString" },
		NvimStringQuote                 = { link = "NvimString" },
		NvimStringSpecial               = { link = "SpecialChar" },

		NvimSingleQuote                 = { link = "NvimStringQuote" },
		NvimSingleQuotedBody            = { link = "NvimStringBody" },
		NvimSingleQuotedQuote           = { link = "NvimStringSpecial" },

		NvimDoubleQuote                 = { link = "NvimStringQuote" },
		NvimDoubleQuotedBody            = { link = "NvimStringBody" },
		NvimDoubleQuotedEscape          = { link = "NvimStringSpecial" },

		NvimFigureBrace                 = { link = "NvimInternalError" },
		NvimSingleQuotedUnknownEscape   = { link = "NvimInternalError" },

		NvimSpacing                     = { link = "Normal" },


		NvimInvalidSingleQuotedUnknownEscape   = { link = "NvimInternalError" },

		NvimInvalid                            = { link = "Error" },

		NvimInvalidAssignment                  = { link = "NvimInvalid" },
		NvimInvalidPlainAssignment             = { link = "NvimInvalidAssignment" },
		NvimInvalidAugmentedAssignment         = { link = "NvimInvalidAssignment" },
		NvimInvalidAssignmentWithAddition      = { link = "NvimInvalidAugmentedAssignment" },
		NvimInvalidAssignmentWithSubtraction   = { link = "NvimInvalidAugmentedAssignment" },
		NvimInvalidAssignmentWithConcatenation = { link = "NvimInvalidAugmentedAssignment" },

		NvimInvalidOperator                    = { link = "NvimInvalid" },

		NvimInvalidUnaryOperator               = { link = "NvimInvalidOperator" },
		NvimInvalidUnaryPlus                   = { link = "NvimInvalidUnaryOperator" },
		NvimInvalidUnaryMinus                  = { link = "NvimInvalidUnaryOperator" },
		NvimInvalidNot                         = { link = "NvimInvalidUnaryOperator" },

		NvimInvalidBinaryOperator              = { link = "NvimInvalidOperator" },
		NvimInvalidComparison                  = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidComparisonModifier          = { link = "NvimInvalidComparison" },
		NvimInvalidBinaryPlus                  = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidBinaryMinus                 = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidConcat                      = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidConcatOrSubscript           = { link = "NvimInvalidConcat" },
		NvimInvalidOr                          = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidAnd                         = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidMultiplication              = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidDivision                    = { link = "NvimInvalidBinaryOperator" },
		NvimInvalidMod                         = { link = "NvimInvalidBinaryOperator" },

		NvimInvalidTernary                     = { link = "NvimInvalidOperator" },
		NvimInvalidTernaryColon                = { link = "NvimInvalidTernary" },

		NvimInvalidDelimiter                   = { link = "NvimInvalid" },

		NvimInvalidParenthesis                 = { link = "NvimInvalidDelimiter" },
		NvimInvalidLambda                      = { link = "NvimInvalidParenthesis" },
		NvimInvalidNestingParenthesis          = { link = "NvimInvalidParenthesis" },
		NvimInvalidCallingParenthesis          = { link = "NvimInvalidParenthesis" },

		NvimInvalidSubscript                   = { link = "NvimInvalidParenthesis" },
		NvimInvalidSubscriptBracket            = { link = "NvimInvalidSubscript" },
		NvimInvalidSubscriptColon              = { link = "NvimInvalidSubscript" },
		NvimInvalidCurly                       = { link = "NvimInvalidSubscript" },

		NvimInvalidContainer                   = { link = "NvimInvalidParenthesis" },
		NvimInvalidDict                        = { link = "NvimInvalidContainer" },
		NvimInvalidList                        = { link = "NvimInvalidContainer" },

		NvimInvalidValue                       = { link = "NvimInvalid" },

		NvimInvalidIdentifier                  = { link = "NvimInvalidValue" },
		NvimInvalidIdentifierScope             = { link = "NvimInvalidIdentifier" },
		NvimInvalidIdentifierScopeDelimiter    = { link = "NvimInvalidIdentifier" },
		NvimInvalidIdentifierName              = { link = "NvimInvalidIdentifier" },
		NvimInvalidIdentifierKey               = { link = "NvimInvalidIdentifier" },

		NvimInvalidColon                       = { link = "NvimInvalidDelimiter" },
		NvimInvalidComma                       = { link = "NvimInvalidDelimiter" },
		NvimInvalidArrow                       = { link = "NvimInvalidDelimiter" },

		NvimInvalidRegister                    = { link = "NvimInvalidValue" },
		NvimInvalidNumber                      = { link = "NvimInvalidValue" },
		NvimInvalidFloat                       = { link = "NvimInvalidNumber" },
		NvimInvalidNumberPrefix                = { link = "NvimInvalidNumber" },

		NvimInvalidOptionSigil                 = { link = "NvimInvalidIdentifier" },
		NvimInvalidOptionName                  = { link = "NvimInvalidIdentifier" },
		NvimInvalidOptionScope                 = { link = "NvimInvalidIdentifierScope" },
		NvimInvalidOptionScopeDelimiter        = { link = "NvimInvalidIdentifierScopeDelimiter" },

		NvimInvalidEnvironmentSigil            = { link = "NvimInvalidOptionSigil" },
		NvimInvalidEnvironmentName             = { link = "NvimInvalidIdentifier" },

		NvimInvalidString                      = { link = "NvimInvalidValue" },
		NvimInvalidStringBody                  = { link = "NvimStringBody" },
		NvimInvalidStringQuote                 = { link = "NvimInvalidString" },
		NvimInvalidStringSpecial               = { link = "NvimStringSpecial" },

		NvimInvalidSingleQuote                 = { link = "NvimInvalidStringQuote" },
		NvimInvalidSingleQuotedBody            = { link = "NvimInvalidStringBody" },
		NvimInvalidSingleQuotedQuote           = { link = "NvimInvalidStringSpecial" },

		NvimInvalidDoubleQuote                 = { link = "NvimInvalidStringQuote" },
		NvimInvalidDoubleQuotedBody            = { link = "NvimInvalidStringBody" },
		NvimInvalidDoubleQuotedEscape          = { link = "NvimInvalidStringSpecial" },
		NvimInvalidDoubleQuotedUnknownEscape   = { link = "NvimInvalidValue" },

		NvimInvalidFigureBrace                 = { link = "NvimInvalidDelimiter" },

		NvimInvalidSpacing                     = { link = "ErrorMsg" },
	}
end

return M
