# Abstract-cs

Colorscheme for neovim written in, specially made for [Abstract](https://github.com/Abstract-IDE/Abstract) with Tree-sitter support.

## 📸 Screenshots

todo

---

## 🚀 Installation

### ⚡️ Requirements

- Neovim **≥ 0.10.0**

with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
require("lazy").setup({
  {
    "Abstract-IDE/Abstract-cs",
    branch   = "rewrite-2",
    lazy     = false,
    priority = 1000,
    config   = function()
      require("abstract_cs").setup({})
    end,
  },
})
```

---

## ⚙️ Configuration

Abstract-cs supports global overrides (apply to every theme) and per-theme overrides.
Theme-specific settings take precedence over global ones.

```lua
---@type AbstractCsOptions
local opts = {
  ---@type AbstractCsName
  name = "code",  -- which built-in theme to load. "code" is default.

  -- Global overrides (apply to all themes)
  global = {
    colors = {
      bg = "#1D1F21",
    },
    highlights = {
      ColorColumn = { bg = "#2A2C2E" },
    },
  },

  -- Theme-specific overrides
  themes = {
    code = {
      colors = {
        bg = "#282A2E",    -- only affects the "code" theme
        fg = "#C5C8C6",
      },
      highlights = {
        ColorColumn = { bg = "#373B41" },
        SpellRare   = { undercurl = true, sp = "#CC6666" },
      },
    },
    -- add overrides for other themes here...
  },
}

require("abstract_cs").setup(opts)
```

### Option Reference

| Option       | Type                                      | Description                                                   |
| ------------ | ----------------------------------------- | ------------------------------------------------------------- |
| `name`       | `AbstractCsName`                          | Theme to load (e.g. `"code"`, `"bluish"`, `"nightish"`, etc.) |
| `global`     | `AbstractCsColorGroup`                    | Global color overrides by name (e.g. `bg`, `fg`)              |
| `colors`     | `AbstractCsPalette`                       | valid color pallet in Abstract-cs                             |
| `highlights` | `table<string, vim.api.keyset.highlight>` | highlight-group                                               |

---

## 📜 License

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Open an [issue](https://github.com/Abstract-IDE/Abstract-cs/issues) to report bugs or suggest features.
2. Submit a pull request with your enhancements or fixes.
3. Improve documentation or add new theme presets.

Thank you for using Abstract-cs!
