# Gabor's VIM Config

## 🚀 Requirements

These packages are required to installed on your OS for other used plugins:
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)
- [LazyGit](https://github.com/jesseduffield/lazygit)

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
| Formating/Linting                       |                                                                                                                  |
| `stevearc/conform.nvim`                 | [https://github.com/stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)                             |
| `mfussenegger/nvim-lint`                | [https://github.com/mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)                           |
| `junegunn/vim-easy-align`               | [https://github.com/junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)                         |
| Diagnostics                             |                                                                                                                  |
| `folke/trouble.nvim`                    | [https://github.com/folke/trouble.nvim](https://github.com/folke/trouble.nvim)                                   |
| LSP Plugins                             |                                                                                                                  |
| `williamboman/mason.nvim`               | [https://github.com/williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)                         |
| `neovim/nvim-lspconfig`                 | [https://github.com/neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                             |
| `nvim-treesitter/nvim-treesitter`       | [https://github.com/nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)         |


## 🌙 Theme

https://github.com/catppuccin/nvim

Flavour: Mocha

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
| `SPACE` + `lg`      | Open LazyGit                                             |
| `SPACE` + `gh`      | Open diffview history                                    |
