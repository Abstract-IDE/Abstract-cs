local M = {}

---Create highlight groups from a palette
---@param c AbstractCsPalette
---@return table<string, vim.api.keyset.highlight>
function M.groups(c)
    return {
        -- Basic UI
        ColorColumn                 = { bg = c.bg },
        Conceal                     = { fg = c.comment },
        Cursor                      = { reverse = true },
        CursorColumn                = { bg = c.bg_2 },
        CursorLine                  = { bg = c.bg_2 },
        CursorLineNr                = { fg = c.comment, reverse = true },
        DiffAdd                     = { fg = c.sucess },
        DiffChange                  = { fg = c.match },
        DiffDelete                  = { fg = c.error },
        DiffText                    = { fg = c.fg, bg = c.bg_highlight },
        Directory                   = { fg = c.main },
        EndOfBuffer                 = { fg = c.bg },
        ErrorMsg                    = { fg = c.error, bold = true },
        FloatBorder                 = { link = "Border" },
        FloatTitle                  = { fg = c.main, bg = c.bg },
        FoldColumn                  = { fg = c.comment, bg = c.bg },
        Folded                      = { fg = c.comment, bg = c.bg },
        IncSearch                   = { fg = c.bg, bg = c.match },
        LineNr                      = { fg = c.comment },
        MatchParen                  = { fg = c.match, bg = c.bg_2, bold = true },
        ModeMsg                     = { fg = c.fg },
        MoreMsg                     = { fg = c.fg },
        MsgArea                     = { fg = c.fg, bg = c.bg },
        Normal                      = { fg = c.fg, bg = c.bg },
        Pmenu                       = { fg = c.fg, bg = c.bg },
        PmenuMatch                  = { fg = c.main, bg = c.bg },
        PmenuMatchSel               = { fg = c.bg, bg = c.match },
        PmenuSbar                   = { bg = c.bg },
        PmenuSel                    = { fg = c.bg, bg = c.main },
        PmenuThumb                  = { bg = c.bg_highlight },
        Question                    = { fg = c.error },
        QuickFixLine                = { fg = c.main, bg = c.bg },
        Search                      = { reverse = true },
        SignColumn                  = { fg = c.comment, bg = c.bg },
        SpecialKey                  = { fg = c.special },
        SpellBad                    = { underline = true, sp = c.error },
        SpellCap                    = { underline = true, sp = c.main },
        SpellLocal                  = { underline = true, sp = c.sucess },
        SpellRare                   = { underline = true, sp = c.match },
        StatusLine                  = { fg = c.fg, bg = c.bg_2 },
        StatusLineNC                = { fg = c.comment, bg = c.bg_2 },
        Substitute                  = { fg = c.bg, bg = c.main },
        TabLine                     = { fg = c.fg, bg = c.bg },
        TabLineFill                 = { fg = c.fg, bg = c.bg },
        TabLineSel                  = { fg = c.bg, bg = c.main },
        Title                       = { fg = c.main, bold = true },
        Visual                      = { bg = c.bg_highlight },
        VisualNOS                   = { bg = c.bg_highlight },
        WarningMsg                  = { fg = c.warn },
        WildMenu                    = { fg = c.bg, bg = c.main },
        WinBar                      = { fg = c.comment, bg = c.bg_2 },
        WinBarNC                    = { fg = c.comment, bg = c.bg },
        WinSeparator                = { fg = c.border },
        -- Generic syntax
        Character                   = { fg = c.sntx_string },
        Comment                     = { fg = c.sntx_comment, italic = true },
        Constant                    = { fg = c.sntx_constant },
        Delimiter                   = { fg = c.sntx_delimiter },
        Error                       = { fg = c.error, bg = c.bg },
        Function                    = { fg = c.sntx_function },
        Identifier                  = { fg = c.sntx_identifier },
        Keyword                     = { fg = c.sntx_keyword, italic = true },
        Operator                    = { fg = c.sntx_operator },
        PreProc                     = { fg = c.sntx_preproc },
        Special                     = { fg = c.sntx_special },
        Statement                   = { fg = c.sntx_statement },
        String                      = { fg = c.sntx_string, italic = true },
        Todo                        = { fg = c.bg, bg = c.warn },
        Type                        = { fg = c.sntx_type },
        -- LSP references
        LspCodeLens                 = { fg = c.comment },
        LspInfoBorder               = { link = "Border" },
        LspInlayHint                = { fg = c.comment, bg = c.bg },
        LspReferenceRead            = { bg = c.bg },
        LspReferenceText            = { bg = c.bg },
        LspReferenceWrite           = { bg = c.bg },
        LspSignatureActiveParameter = { fg = c.main },
        -- Diagnostics
        DiagnosticError             = { fg = c.virtual_error },
        DiagnosticHint              = { fg = c.virtual_hint },
        DiagnosticInfo              = { fg = c.virtual_info },
        DiagnosticUnderlineError    = { sp = c.virtual_error, underline = true, italic = true },
        DiagnosticUnderlineHint     = { sp = c.virtual_hint, underline = true, italic = true },
        DiagnosticUnderlineInfo     = { sp = c.virtual_info, underline = true, italic = true },
        DiagnosticUnderlineWarn     = { sp = c.virtual_warn, underline = true, italic = true },
        DiagnosticUnnecessary       = { fg = c.comment, italic = true },
        DiagnosticVirtualTextError  = { fg = c.virtual_error, italic = true },
        DiagnosticVirtualTextHint   = { fg = c.virtual_hint, italic = true },
        DiagnosticVirtualTextInfo   = { fg = c.virtual_info, italic = true },
        DiagnosticVirtualTextWarn   = { fg = c.virtual_warn, italic = true },
        DiagnosticWarn              = { fg = c.virtual_warn, italic = true },
        -- Health output
        healthError                 = { fg = c.error },
        healthSuccess               = { fg = c.sucess },
        healthWarning               = { fg = c.warn },
        -- diff
        diffAdded                   = { fg = c.sucess },
        diffChanged                 = { fg = c.match },
        diffFile                    = { fg = c.main },
        diffIndexLine               = { fg = c.main },
        diffLine                    = { fg = c.highlight },
        diffNewFile                 = { fg = c.sucess },
        diffOldFile                 = { fg = c.error },
        diffRemoved                 = { fg = c.error },
        helpExample                 = { fg = c.warn },


        -- === Customs === --


        Bold        = { bold = true },
        Border      = { fg = c.border, bg = c.bg },
        Indent      = { fg = c.indent },
        IndentScope = { fg = c.indent_scope },
        Italic      = { italic = true },
        Underlined  = { underline = true },


        -- === Treesitter === --
        ["@variable"] = { fg = c.sntx_variable },


        -- NOTE: for now lets disable these Treesitter highlights.
        --      will comment out later if needed
        -- ["@attribute"]                  = { link = "Macro" },
        -- ["@attribute.builtin"]          = { link = "Special" },
        -- ["@boolean"]                    = { link = "Boolean" },
        -- ["@character"]                  = { link = "Character" },
        -- ["@character.special"]          = { link = "SpecialChar" },
        -- ["@comment"]                    = { link = "Comment" },
        -- ["@comment.error"]              = { link = "DiagnosticError" },
        -- ["@comment.note"]               = { link = "DiagnosticInfo" },
        -- ["@comment.todo"]               = { link = "Todo" },
        -- ["@comment.warning"]            = { link = "DiagnosticWarn" },
        -- ["@conceal"]                    = { link = "Conceal" },
        -- ["@constant"]                   = { link = "Constant" },
        -- ["@constant.builtin"]           = { link = "Special" },
        -- ["@constructor"]                = { link = "Special" },
        -- ["@diff.delta"]                 = { link = "Changed" },
        -- ["@diff.minus"]                 = { link = "Removed" },
        -- ["@diff.plus"]                  = { link = "Added" },
        -- ["@function"]                   = { link = "Function" },
        -- ["@function.builtin"]           = { link = "Special" },
        -- ["@keyword"]                    = { link = "Keyword" },
        -- ["@label"]                      = { link = "Label" },
        -- ["@lsp.mod.deprecated"]         = { link = "DiagnosticDeprecated" },
        -- ["@lsp.type.class"]             = { link = "@type" },
        -- ["@lsp.type.comment"]           = { link = "@comment" },
        -- ["@lsp.type.decorator"]         = { link = "@attribute" },
        -- ["@lsp.type.enum"]              = { link = "@type" },
        -- ["@lsp.type.enumMember"]        = { link = "@constant" },
        -- ["@lsp.type.event"]             = { link = "@type" },
        -- ["@lsp.type.function"]          = { link = "@function" },
        -- ["@lsp.type.interface"]         = { link = "@type" },
        -- ["@lsp.type.keyword"]           = { link = "@keyword" },
        -- ["@lsp.type.macro"]             = { link = "@constant.macro" },
        -- ["@lsp.type.method"]            = { link = "@function.method" },
        -- ["@lsp.type.modifier"]          = { link = "@type.qualifier" },
        -- ["@lsp.type.namespace"]         = { link = "@module" },
        -- ["@lsp.type.number"]            = { link = "@number" },
        -- ["@lsp.type.operator"]          = { link = "@operator" },
        -- ["@lsp.type.parameter"]         = { link = "@variable.parameter" },
        -- ["@lsp.type.property"]          = { link = "@property" },
        -- ["@lsp.type.regexp"]            = { link = "@string.regexp" },
        -- ["@lsp.type.string"]            = { link = "@string" },
        -- ["@lsp.type.struct"]            = { link = "@type" },
        -- ["@lsp.type.type"]              = { link = "@type" },
        -- ["@lsp.type.typeParameter"]     = { link = "@type.definition" },
        -- ["@lsp.type.variable"]          = { link = "@variable" },
        -- ["@markup"]                     = { link = "Special" },
        -- ["@markup.heading"]             = { link = "Title" },
        -- ["@markup.italic"]              = { italic = true },
        -- ["@markup.link"]                = { link = "Underline" },
        -- ["@markup.strikethrough"]       = { strikethrough = true },
        -- ["@markup.strong"]              = { bold = true },
        -- ["@markup.underline"]           = { underline = true },
        -- ["@module"]                     = { link = "Structure" },
        -- ["@module.builtin"]             = { link = "Special" },
        -- ["@number"]                     = { link = "Number" },
        -- ["@number.float"]               = { link = "Float" },
        -- ["@operator"]                   = { link = "Operator" },
        -- ["@property"]                   = { link = "Identifier" },
        -- ["@punctuation"]                = { link = "Delimiter" },
        -- ["@punctuation.specia"]         = { link = "Special" },
        -- ["@string"]                     = { link = "String" },
        -- ["@string.escape"]              = { link = "@string.special" },
        -- ["@string.regexp"]              = { link = "@string.special" },
        -- ["@string.special"]             = { link = "SpecialChar" },
        -- ["@string.special.url"]         = { link = "Underline" },
        -- ["@tag"]                        = { link = "Tag" },
        -- ["@tag.builtin"]                = { link = "Special" },
        -- ["@type"]                       = { link = "Type" },
        -- ["@type.builtin"]               = { link = "Special" },
        -- ["@variable"]                   = { fg = c.sntx_variable },
        -- ["@variable.builtin"]           = { link = "Special" },
        -- ["@variable.parameter"]         = { italic = true },
        -- ["@variable.parameter.builtin"] = { link = "Special" },


        -- === Plugins === --


        -- Blink.cmp: https://github.com/Saghen/blink.cmp
        BlinkCmpDocBorder        = { link = "Border" },
        BlinkCmpKind             = { fg = c.sntx_type },
        BlinkCmpLabelMatch       = { fg = c.match },         --  Label of the completion item when it matches the query
        BlinkCmpMenu             = { bg = c.bg },            --  The completion menu window
        BlinkCmpMenuBorder       = { link = "Border" },      --  The completion menu window border
        BlinkCmpLabelDescription = { fg = c.sntx_constant }, --  Label description of the completion item
        -- BlinkCmpDoc              = { fg = colors.CmpDoc },

        -- Flutter-tools.nvim: https://github.com/nvim-flutter/flutter-tools.nvim
        FlutterWidgetGuides      = { link = "IndentScope" },


        -- Nvim-tree: github.com/nvim-neo-tree/neo-tree.nvim
        NeoTreeIndentMarker        = { link = "Indent" },

        -- Snacks.nvim: github.com/folke/snacks.nvim
        SnacksIndent               = { link = "Indent" },
        SnacksIndentScope          = { link = "IndentScope" },
        SnacksPickerDir            = { fg = c.border },
        SnacksPickerListCursorLine = { bg = c.bg_2 },
        SnacksPickerSelected       = { link = "Visual" },

        -- Telescope: github.com/nvim-telescope/telescope.nvim
        TelescopeBorder            = { link = "Border" },
        TelescopeMatching          = { fg = c.match },
        TelescopeSelection         = { link = "Visual" },
        -- TelescopePromptPrefix = {},

        -- Trouble: https://github.com/folke/trouble.nvim
        TroubleCode                = { fg = c.error },
        TroubleCount               = { fg = c.fg, bg = c.bg_highlight },
        TroubleIndent              = { fg = c.fg }, -- indent color
        TroublePos                 = { fg = c.fg }, -- background color of unfocused trouble window
        TroubleSignHint            = { fg = c.fg, bg = c.bg_highlight },

        -- Others
        GitSignsAdd                = { fg = c.sucess },
        GitSignsChange             = { fg = c.warn },
        GitSignsDelete             = { fg = c.error },
        GitSignsUntracked          = { fg = c.fg },
    }
end

return M
