# Gabor's VIM Config

## 📑 Table of Contents

- [🚀 Requirements](#-requirements)
  - [PHP debugging (optional)](#php-debugging-optional)
- [⚒️ Plugins](#-plugins)
- [🌙 Theme](#-theme)
- [Treesitter](#treesitter)
- [⌨️ Commands](#-commands)
  - [Basic keymaps](#basic-keymaps)
  - [Terminal keymaps](#terminal-keymaps)
  - [Telescope (fuzzy finder) keymaps](#telescope-fuzzy-finder-keymaps)
  - [Easy align keymap](#easy-align-keymap)
  - [Barbar keymaps](#barbar-keymaps)
  - [Git keymaps](#git-keymaps)
  - [LSP keymaps](#lsp-keymaps)
  - [Trouble keymaps](#trouble-keymaps)
  - [Debugger (DAP) keymaps](#debugger-dap-keymaps)
  - [Testing (Neotest) keymaps](#testing-neotest-keymaps)
  - [CopilotChat keymaps](#copilotchat-keymaps)
  - [Notification keymaps](#notification-keymaps)
  - [Linting keymaps](#linting-keymaps)

## 🚀 Requirements

These packages/tools are required to be installed on your OS for the
plugins in this config to work:
- [Lazy.nvim](https://github.com/folke/lazy.nvim) — plugin manager
- [LazyGit](https://github.com/jesseduffield/lazygit) — used by `lazygit.nvim`
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) — used by Telescope's `find_files`/`live_grep`
- [tree-sitter CLI](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md) (v0.26.1+, installed via a package manager, **not npm**) — required by `nvim-treesitter` to build parsers
- A C compiler (e.g. `gcc`/`clang`) and `make` — needed to build `telescope-fzf-native.nvim`, and used by the tree-sitter CLI itself when building parsers
- [Node.js](https://nodejs.org/) (with `npm`) — required by most Mason-installed LSP servers and by GitHub Copilot's agent
- A [Nerd Font](https://www.nerdfonts.com/) — needed for icons (`nvim-web-devicons`, used by barbar, lualine, neo-tree, nvim-cmp)
- A GitHub Copilot subscription — run `:Copilot setup` on first use to authenticate

### PHP debugging (optional)

To debug PHP with `nvim-dap`:
1. Install the Xdebug PHP extension and enable it in your project's `php.ini`.
2. Run `:MasonInstall php-debug-adapter` once — unlike other Mason tools in
   this config, it isn't in the `ensure_installed` list, so it won't install
   automatically.

## ⚒️ Plugins

| Name                                    | Url                                                                                                              |
| --------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| `MunifTanjim/nui.nvim`                  | [https://github.com/MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)                               |
| Theme                                   |                                                                                                                  |
| `catppuccin/nvim`                       | [https://github.com/catppuccin/nvim](https://github.com/catppuccin/nvim)                                         |
| Editor                                  |                                                                                                                  |
| `nvim-telescope/telescope.nvim`         | [https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)             |
| `romgrk/barbar.nvim`                    | [https://github.com/romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)                                   |
| `windwp/nvim-autopairs`                 | [https://github.com/windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)                             |
| `nvim-lualine/lualine.nvim`             | [https://github.com/nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                     |
| `nvim-neo-tree/neo-tree.nvim`           | [https://github.com/nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                 |
| `rcarriga/nvim-notify`                  | [https://github.com/rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)                               |
| `akinsho/toggleterm.nvim`               | [https://github.com/akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)                         |
| Git                                     |                                                                                                                  |
| `kdheepak/lazygit.nvim`                 | [https://github.com/kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)                             |
| `tpope/vim-fugitive`                    | [https://github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                                   |
| `sindrets/diffview.nvim`                | [https://github.com/sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)                           |
| `lewis6991/gitsigns.nvim`               | [https://github.com/lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                         |
| `editorconfig/editorconfig-vim`         | [https://github.com/editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)             |
| `numToStr/Comment.nvim`                 | [https://github.com/numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)                             |
| `wuelnerdotexe/vim-astro`               | [https://github.com/wuelnerdotexe/vim-astro](https://github.com/wuelnerdotexe/vim-astro)                         |
| Completion                              |                                                                                                                  |
| `hrsh7th/nvim-cmp`                      | [https://github.com/hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                       |
| AI                                      |                                                                                                                  |
| `github/copilot.vim`                    | [https://github.com/github/copilot.vim](https://github.com/github/copilot.vim)                                   |
| `CopilotC-Nvim/CopilotChat.nvim`        | [https://github.com/CopilotC-Nvim/CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)           |
| Debugging                               |                                                                                                                  |
| `mfussenegger/nvim-dap`                 | [https://github.com/mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)                             |
| Testing                                 |                                                                                                                  |
| `nvim-neotest/neotest`                  | [https://github.com/nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)                               |
| Laravel / PHP                           |                                                                                                                  |
| `adalessa/laravel.nvim`                 | [https://github.com/adalessa/laravel.nvim](https://github.com/adalessa/laravel.nvim)                             |
| `gbprod/phpactor.nvim`                  | [https://github.com/gbprod/phpactor.nvim](https://github.com/gbprod/phpactor.nvim)                               |
| `ricardoramirezr/blade-nav.nvim`        | [https://github.com/ricardoramirezr/blade-nav.nvim](https://github.com/ricardoramirezr/blade-nav.nvim)           |
| Formating/Linting                       |                                                                                                                  |
| `stevearc/conform.nvim`                 | [https://github.com/stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)                             |
| `mfussenegger/nvim-lint`                | [https://github.com/mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)                           |
| `junegunn/vim-easy-align`               | [https://github.com/junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)                         |
| Diagnostics                             |                                                                                                                  |
| `folke/trouble.nvim`                    | [https://github.com/folke/trouble.nvim](https://github.com/folke/trouble.nvim)                                   |
| `rachartier/tiny-inline-diagnostic.nvim`| [https://github.com/rachartier/tiny-inline-diagnostic.nvim](https://github.com/rachartier/tiny-inline-diagnostic.nvim) |
| LSP Plugins                             |                                                                                                                  |
| `mason-org/mason.nvim`                  | [https://github.com/mason-org/mason.nvim](https://github.com/mason-org/mason.nvim)                               |
| `neovim/nvim-lspconfig`                 | [https://github.com/neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                             |
| `nvim-treesitter/nvim-treesitter`       | [https://github.com/nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)         |


## 🌙 Theme

https://github.com/catppuccin/nvim

Flavour: Macchiato

If you are using tmux, the color scheme doesn't show properly.
To enable the theme schema set the following config in your `.tmux.conf`.

**~/.tmux.conf**
```bash
set -g default-terminal 'xterm-256color'
set -as terminal-overrides ',xterm*:Tc:sitm=\E[3m'
```

## Treesitter

Parsers for `lua, rust, go, bash, php, blade, astro, css, dockerfile, html,
json, yaml, scss, typescript, vue, svelte, json5, javascript` install
automatically the first time you open this config (and lazy.nvim's
`:TSUpdate` build hook keeps them updated). Opening any other filetype also
auto-installs its parser on first use. Manual `:TSInstall <lang>` is only
needed if you want a parser that isn't in that list yet.

## ⌨️ Commands

> 💡 The leader key is mapped to 'SPACE'


### Basic keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `w`       | Fast saving ( Save file )                                |
| `SPACE` + `nH`      | Disable search highlight                                 |
| `SPACE` + `op`      | Toggle neotree filetree                                  |
|                     |                                                          |
|                     |                                                          |
| `SPACE` + `ss`      | Split editor horizontally                                |
| `SPACE` + `sv`      | Split editor vertically                                  |
| `SPACE` + `n`       | New buffer                                               |
| `SPACE` + `vl`      | Enter visual block mode                                  |
| `SPACE` + `fo`      | Fold selection (visual mode)                             |
| `SPACE` + `fO`      | Open fold under cursor                                   |
| `SPACE` + `y`       | Yank to system clipboard (normal/visual mode)             |
| `SPACE` + `Y`       | Yank line to system clipboard                            |
|                     |                                                          |
| `CTRL` + `h`        | Move navigation focus to left                            |
| `CTRL` + `j`        | Move navigation focus up                                 |
| `CTRL` + `k`        | Move navigation focus down                               |
| `CTRL` + `l`        | Move navigation focus to right                           |
| `K`                 | Move selected line up\> Available in the visual mode     |
| `J`                 | Move selected line down\> Available in the visual mode   |

### Terminal keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `ot`      | Horizontal terminal                                      |
| `SPACE` + `oT`      | Floating window terminal                                 |
| `CTRL` + `wN`       | Exit terminal insert mode                                |

### Telescope (fuzzy finder) keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `SPACE`   | Show file search                                         |
| `SPACE` + `tg`      | Live grep search                                         |
| `SPACE` + `,`       | Show all buffers                                         |
| `SPACE` + `gb`      | Show git branches                                        |
| `SPACE` + `th`      | Show help tags                                           |


### Easy align keymap

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `fa`      | Action for easy align                                    |
| `SPACE` + `ft`      | Align on custom character (visual mode)                  |


### Barbar keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `ALT` + `h`         | Switch to the left tab                                   |
| `ALT` + `l`         | Switch to the right tab                                  |
|                     |                                                          |
| `ALT` + `1`         | Go to tab 1                                              |
| `ALT` + `2`         | Go to tab 2                                              |
| `ALT` + `3`         | Go to tab 3                                              |
| `ALT` + `4`         | Go to tab 4                                              |
| `ALT` + `5`         | Go to tab 5                                              |
| `ALT` + `6`         | Go to tab 6                                              |
| `ALT` + `7`         | Go to tab 7                                              |
| `ALT` + `8`         | Go to tab 8                                              |
| `ALT` + `0`         | Go to the last tab                                       |
|                     |                                                          |
| `ALT` + `p`         | Pin current tab                                          |
| `CTRL` + `w`        | Close current buffer tab                                 |
| `ALT` + `W`         | Close **all** buffer tabs                                |
| `ALT` + `o`         | Pick tab buffer                                          |


### Git keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `gg`      | Git                                                      |
| `SPACE` + `gf`      | Git fetch                                                |
| `SPACE` + `gp`      | Git pull                                                 |
| `SPACE` + `gP`      | Git push                                                 |
| `SPACE` + `lg`      | Open LazyGit                                             |
| `SPACE` + `gh`      | Open diffview history                                    |

### LSP keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `gR`                | Show LSP references                                      |
| `gD`                | Go to declaration                                        |
| `gd`                | Show LSP definitions                                     |
| `gi`                | Show LSP implementations                                 |
| `gt`                | Show LSP type definitions                                |
| `SPACE` + `ca`      | Code action                                              |
| `SPACE` + `rn`      | Smart rename                                             |
| `SPACE` + `D`       | Show buffer diagnostics                                  |
| `SPACE` + `d`       | Show line diagnostics                                    |
| `[d`                | Go to previous diagnostic                                |
| `]d`                | Go to next diagnostic                                    |
| `K`                 | Show hover documentation                                 |
| `SPACE` + `rs`      | Restart LSP                                              |
| `CTRL` + `k`        | Show signature help                                      |

### Trouble keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `xw`      | Toggle workspace diagnostics                             |
| `SPACE` + `xd`      | Toggle buffer diagnostics                                |
| `SPACE` + `xq`      | Toggle quickfix list                                     |
| `SPACE` + `xl`      | Toggle location list                                     |
| `SPACE` + `xt`      | Toggle todos                                             |

### Debugger (DAP) keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `db`      | Toggle breakpoint                                        |
| `SPACE` + `duc`     | Close DAP UI                                             |
| `F1`                | Continue                                                 |
| `F2`                | Step into                                                |
| `F3`                | Step over                                                |
| `F4`                | Step out                                                 |
| `F5`                | Step back                                                |
| `F6`                | Restart                                                  |

### Testing (Neotest) keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `tr`      | Run tests in current file                                |
| `SPACE` + `tn`      | Run nearest test                                         |
| `SPACE` + `ti`      | Toggle test summary                                      |
| `SPACE` + `ts`      | Run last test                                            |

### CopilotChat keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `cc`      | Toggle Copilot chat                                      |
| `SPACE` + `cg`      | Generate commit message                                  |
| `SPACE` + `ca`      | Generate commit message (same as `SPACE` + `cg`)         |
| `TAB`               | Accept suggestion (insert mode, Copilot chat buffers)    |

### Notification keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `nd`      | Dismiss all notifications                                |

### Linting keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `l`       | Trigger linting for current file                         |
