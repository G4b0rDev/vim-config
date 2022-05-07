# Gabor's VIM Config

## 🚀 Requirements

Two packages are required for other plugins:
    - (FZF)[https://github.com/junegunn/fzf.vim]
    - (COC)[https://github.com/neoclide/coc.nvim]

## ⚒️ Plugins
| Name                                  | Url                                                    | Category    |
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
| `coc-pairs`    | https://github.com/neoclide/coc-pairs    |
| `coc-json`     | https://github.com/neoclide/coc-json     |
| `coc-phpls`    | https://github.com/marlonfan/coc-phpls   |
| `coc-go`       | https://github.com/josa42/coc-go         |
| `coc-snippets` | https://github.com/neoclide/coc-snippets |
| `coc-blade`    | https://github.com/yaegassy/coc-blade    |

## 🌙 Theme
https://github.com/drewtempelmeyer/palenight.vim

## ⌨️  Commandsc


## 🌟 Tailwindcss Intellisense

used vim plugin: https://github.com/rodrigore/coc-tailwind-intellisense
for more tailwindcss configs check out the official docs: https://github.com/tailwindlabs/tailwindcss-intellisense

> 💡 note: for tailwindcss v3 the intellisense has a bug.
> workaround for the lsp: 

issue: https://github.com/rodrigore/coc-tailwind-intellisense/issues/29

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
