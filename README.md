# Abstract-cs

Colorscheme for neovim with TreeSitter support written in Lua.

## Screenshots

![screenshot_lua](https://raw.githubusercontent.com/shaeinst/media/main/images/github-repositories/roshnivim/buff_and_nerdtree.png)
![screenshot_pythonlsp](https://raw.githubusercontent.com/shaeinst/media/main/images/github-repositories/roshnivim/python_lsp.png)
![screenshot_running_c](https://raw.githubusercontent.com/shaeinst/media/main/images/github-repositories/roshnivim/running_c.png)
![screenshot_telescode](https://raw.githubusercontent.com/shaeinst/media/main/images/github-repositories/roshnivim/telescope_as_fuzzy_finder.png)
![screenshot_lua](https://raw.githubusercontent.com/shaeinst/media/main/images/github-repositories/roshnivim/packer.png)
![screenshot_codeaction](https://raw.githubusercontent.com/shaeinst/media/main/images/github-repositories/roshnivim/codeaction_in_flutter_app.png)

## Requirements

- Neovim >= 0.10.0

## Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'Abstract-IDE/Abstract-cs'
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'Abstract-IDE/Abstract-cs'
```

## Usage

Enable the colorscheme (choose `abstract_minimal`, `abstract_dark`, or `abstract_aqua`):

```vim
" Vim Script
colorscheme abstract_minimal
```

```lua
-- Lua
vim.cmd[[colorscheme abstract_dark]]
```

## Contributing

If you would like to add support to a plugin or to fix a bug please feel free to send a PR.
