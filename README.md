# Gabor's VIM Config

## 🚀 Requirements

These packages are required for other plugins:
- [packer](https://github.com/wbthomason/packer.nvim)

## ⚒️ Plugins

| Name                                    | Url                                                                                                              |
| --------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| `MunifTanjim/nui.nvim`                  | [https://github.com/MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)                               |
| Theme                                   |                                                                                                                  |
| `olimorris/onedarkpro.nvim`             | [https://github.com/olimorris/onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)                     |
| Plugins                                 |                                                                                                                  |
| `nvim-telescope/telescope.nvim`         | [https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)             |
| `vim-airline/vim-airline`               | [https://github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)                         |
| `vim-airline/vim-airline-themes`        | [https://github.com/vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)           |
| `tpope/vim-fugitive`                    | [https://github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                                   |
| `nvim-treesitter/nvim-treesitter`       | [https://github.com/nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)         |
| `junegunn/vim-easy-align`               | [https://github.com/junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)                         |
| `lewis6991/gitsigns.nvim`               | [https://github.com/lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                         |
| `romgrk/barbar.nvim`                    | [https://github.com/romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)                                   |
| `windwp/nvim-autopairs`                 | [https://github.com/windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)                             |
| `jwalton512/vim-blade`                  | [https://github.com/jwalton512/vim-blade](https://github.com/jwalton512/vim-blade)                               |
| LSP Plguins                             |                                                                                                                  |
| `nvim-neo-tree/neo-tree.nvim`           | [https://github.com/nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                 |
| `williamboman/mason.nvim`               | [https://github.com/williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)                         |
| `williamboman/mason-lspconfig.nvim`     | [https://github.com/williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)     |
| `neovim/nvim-lspconfig`                 | [https://github.com/neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                             |
| `hrsh7th/nvim-cmp`                      | [https://github.com/hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                       |
| `hrsh7th/cmp-nvim-lsp`                  | [https://github.com/hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)                               |
| `saadparwaiz1/cmp_luasnip`              | [https://github.com/saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)                       |
| `L3MON4D3/LuaSnip`                      | [https://github.com/L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)                                       |
| `hrsh7th/cmp-nvim-lsp-signature-help`   | [https://github.com/hrsh7th/cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help) |


## 🌙 Theme
https://github.com/drewtempelmeyer/palenight.vim


If you are using tmux, the color scheme doens't show properly.
To enable the theme schema set the following config in your `.tmux.conf`.

**~/.tmux.conf**
```bash
set -g default-terminal 'xterm-256color'
set -as terminal-overrides ',xterm*:Tc:sitm=\E[3m'
```

## ⌨️ Commands

> 💡 The leader key is mapped to 'SPACE'


### Basic keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `w`       | Fast saving ( Save file )                                |
| `SPACE` + `nH`      | Disable search highlight                                 |
| `SPACE` + `op`      | Toggle neotree filetree                                  |
|                     |                                                          |
| `SPACE` + `ot`      | Horizontal terminal split                                |
| `SPACE` + `oT`      | Vertical terminal split                                  |
| `CTRL` + `wN`       | Exit terminal insert mode                                |
|                     |                                                          |
| `SPACE` + `ss`      | Split editor horizontally                                |
| `SPACE` + `sv`      | Split editor vertically                                  |
|                     |                                                          |
| `CTRL` + `h`        | Move navigation focus to left                            |
| `CTRL` + `j`        | Move navigation focus up                                 |
| `CTRL` + `k`        | Move navigation focus down                               |
| `CTRL` + `l`        | Move navigation focus to right                           |
| `K`                 | Move selected line up\> Available in the visual mode     |
| `J`                 | Move selected line down\> Available in the visual mode   |

### Telescope (fuzzy finder) keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `SPACE`   | Show file search                                         |
| `SPACE` + `lg`      | Live grep search                                         |
| `SPACE` + `,`       | Show all buffers                                         |
| `SPACE` + `gb`      | Show git branches                                        |
| `SPACE` + `th`      | Show help tags                                           |


### Easy align keymap

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `fa`      | Action for easy align                                    |


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
| `ALT` + `w`         | Close current buffer tab                                 |
| `ALT` + `W`         | Close **all** buffer tabs                                |
| `ALT` + `o`         | Pick tab buffer                                          |


### Git keymaps

| Command             | Description                                              |
| ------------------- | -------------------------------------------------------- |
| `SPACE` + `gg`      | Git                                                      |
| `SPACE` + `gf`      | Git fetch                                                |
| `SPACE` + `gp`      | Git pull                                                 |
| `SPACE` + `gP`      | Git push                                                 |
