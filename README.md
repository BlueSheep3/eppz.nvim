A colorscheme for Neovim that tries to mimick the [eppz!](https://github.com/Geri-Borbas/VSCode.Extension.eppz_Code) color theme for VSCode.


# Installation

## using `vim-plug`

```vim
Plug 'BlueSheep3/eppz.nvim'
```

and then, in your `init.vim` select this colorscheme:

```vim
colorscheme eppz
```

This colorscheme is currently very minimal, meaning it won't define some highlight groups.
You can install another colorscheme as a fallback when this one doesn't define anything by doing:

```vim
"the other colorscheme must be first
colorscheme someotherscheme
colorscheme eppz
```
