# Gabor's VIM Config

## 🚀 Requirements

These packages are required for other plugins:
- [FZF](https://github.com/junegunn/fzf.vim)
- [VIM-Plug](https://github.com/junegunn/vim-plug)
- [COC](https://github.com/neoclide/coc.nvim)

## ⚒️ Plugins
| Name                                  | Url                                                    | Category    |
|---------------------------------------|--------------------------------------------------------|-------------|
| `preservim/nerdtree`                  | https://github.com/preservim/nerdtree                  |             |
| `sheerun/vim-polyglot`                | https://github.com/sheerun/vim-polyglot                |             |
| `junegunn/vim-easy-align`             | https://github.com/junegunn/vim-easy-align             |             |
| `kyazdani42/nvim-web-devicons`        | https://github.com/kyazdani42/nvim-web-devicons        | icons       |
| `ryanoasis/vim-devicons'`             | https://github.com/ryanoasis/vim-devicons              | icons       |
| `drewtempelmeyer/palenight.vim`       | https://github.com/drewtempelmeyer/palenight.vim       | theme       |
| `vim-airline/vim-airline`             | https://github.com/vim-airline/vim-airline             | overlay     |
| `vim-airline/vim-airline-themes`      | https://github.com/vim-airline/vim-airline-themes      | overlay     |
| `romgrk/barbar.nvim`                  | https://github.com/romgrk/barbar.nvim                  | overlay     |
| `tpope/vim-fugitive`                  | https://github.com/tpope/vim-fugitive                  | git         |
| `mhinz/vim-signify`                   | https://github.com/mhinz/vim-signify                   | git         |
| `xuyuanp/nerdtree-git-plugin`         | https://github.com/xuyuanp/nerdtree-git-plugin         | git         |
| `sirver/ultisnips`                    | https://github.com/sirver/ultisnips                    | snippets    |
| `rodrigore/coc-tailwind-intellisense` | https://github.com/rodrigore/coc-tailwind-intellisense | intelisense |

### COC Plugins
| Name           | Url                                      |
|----------------|------------------------------------------|
| `coc-pairs`    | https://github.com/neoclide/coc-pairs    |
| `coc-json`     | https://github.com/neoclide/coc-json     |
| `coc-phpls`    | https://github.com/marlonfan/coc-phpls   |
| `coc-go`       | https://github.com/josa42/coc-go         |
| `coc-snippets` | https://github.com/neoclide/coc-snippets |
| `coc-blade`    | https://github.com/yaegassy/coc-blade    |

## 🌙 Theme
https://github.com/drewtempelmeyer/palenight.vim

## ⌨️ Commands

> 💡 The leader key is mapped to 'SPACE'

| Category            | Command           | Description                                            |
| ----------          | ---------         | -------------                                          |
| Terminal            | `SPACE` + `ot`    | Horizontal terminal split                              |
| Terminal            | `SPACE` + `oT`    | Vertical terminal split                                |
|                     |                   |                                                        |
| Buffer management   | `SPACE` + `SPACE` | Search files inside the project directory              |
| Buffer management   | `SPACE` + `,`     | Search & switch buffer                                 |
| Saving              | `SPACE` + `w`     | Fast saving                                            |
|                     |                   |                                                        |
| Split               | `SPACE` + `ss`    | Split editor horizontally                              |
| Split               | `SPACE` + `sv`    | Split editor vertically                                |
|                     |                   |                                                        |
| Split navigation    | `CTRL` + `h`      | Move navigation focus to left                          |
| Split navigation    | `CTRL` + `j`      | Move navigation focus up                               |
| Split navigation    | `CTRL` + `k`      | Move navigation focus down                             |
| Split navigation    | `CTRL` + `l`      | Move navigation focus to right                         |
| Move selected lines | `K`               | Move selected line up\> Available in the visual mode   |
| Move selected lines | `J`               | Move selected line down\> Available in the visual mode |
|                     |                   |                                                        |
| EasyAlign           | `SPACE` + `fa`    |                                                        |
|                     |                   |                                                        |
| NerdTree            | `SPACE` + `op`    | Toggle sidebar folder tree                             |
|                     |                   |                                                        |
| Git (fugitive)      | `SPACE` + `gg`    | Git                                                    |
| Git (fugitive)      | `SPACE` + `gf`    | Git fetch                                              |
| Git (fugitive)      | `SPACE` + `gp`    | Git pull                                               |
| Git (fugitive)      | `SPACE` + `gP`    | Git push                                               |


## 🌟 Tailwindcss Intellisense

Used vim plugin: https://github.com/rodrigore/coc-tailwind-intellisense\
For more tailwindcss configs check out the official docs: https://github.com/tailwindlabs/tailwindcss-intellisense

> 💡 Note: for tailwindcss v3 the intellisense has a bug.\
> workaround for the lsp: 

**Issue:** https://github.com/rodrigore/coc-tailwind-intellisense/issues/29

```bash
npm i -g @tailwindcss/language-server
```

or

```bash
yarn global add @tailwindcss/language-server
```

`coc-settings.json`
```json
"languageserver": {
    "tailwind-lsp": {
          "command": "tailwindcss-language-server",
          "args": ["--stdio"],
          "filetypes": [
                "javascript",
                "javascriptreact",
                "typescript",
                "typescriptreact",
                "html",
                "css",
                "blade"
          ],
          "rootPatterns": [
                "tailwind.config.js",
                "tailwind.config.ts",
                "postcss.config.js",
                "postcss.config.ts",
                "package.json",
                "node_modules",
                ".git"
          ],
          "settings": {
                "tailwindCSS": {
                "validate": true,
                "lint": {
                    "cssConflict": "warning",
                    "invalidApply": "error",
                    "invalidScreen": "error",
                    "invalidVariant": "error",
                    "invalidConfigPath": "error",
                    "invalidTailwindDirective": "error",
                    "recommendedVariantOrder": "warning"
                },
                "classAttributes": ["class", "className", "classList", "ngClass"],
                "experimental": {}
            }
        }
    }
}
```
