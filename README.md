# ariane-vim.nvim

**ariane-vim** is a Neovim plugin that bundles plugins, keymaps, and options into a cohesive configuration.

## ✨ Features

* Preconfigured plugins with lazy.nvim
* Consistent keymaps and editor behavior
* LSP integration
* Git integration
* Easy to configure
* UI enhancements

## 👉 Requirements

Before installing **ariane-vim**, ensure you have:

* neovim >= 0.12
* git
* ripgrep
* tree-sitter-cli
* npm (required for some LSPs)
* A terminal that supports true color and undercurl
* A Nerd Font (optional but recommended)

## 📥 Installation

Installing **ariane-vim** can be done by simply adding the plugin to your lazy.nvim config.
If you don't have a config, you can also look at my [personal configuration](https://github.com/JudicaelT/nvim) for inspiration.

```bash
# You will need to run these commands to backup your
# current config and install from a fresh config.
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

```lua
-- Import lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Import ariane-vim.nvim
    {
        "JudicaelT/ariane-vim.nvim",
        import = "ariane-vim.plugins",
    },
    -- You can also add your own plugins
    -- or override / edit / remove plugins from the base config
})

-- Add your custom keymaps and options
-- or override those from the base config
```

## 🔌 Plugins

### UI
* **vague2k/vague.nvim** colorscheme
* **folke/noice.nvim** better ui
* **nvim-lua/plenary.nvim** better ui
* **nvim-tree/nvim-web-devicons** better ui
* **MunifTanjim/nui.nvim** better ui
* **nvim-treesitter/nvim-treesitter** Syntax tree parsing
* **RRethy/vim-illuminate** Word highlighting
* **nvim-lualine/lualine.nvim** Status bar
* **folke/which-key.nvim** Keymap help
* **goolord/alpha-nvim** Home screen

### Navigation
* **nvim-telescope/telescope.nvim** Fuzzy find and grep
* **nvim-telescope/telescope-ui-select.nvim** Fuzzy find and grep
* **nvim-neo-tree/neo-tree.nvim** File tree
* **ThePrimeagen/harpoon** Buffer pinning
* **folke/flash.nvim** Character jump

### Editing
* **hrsh7th/cmp-nvim-lsp** Auto-completion
* **hrsh7th/nvim-cmp** Auto-completion
* **hanspinckaers/zap.nvim** Auto-completion
* **mg979/vim-visual-multi** Multiline editing
* **nvimtools/none-ls.nvim** Formatting
* **m4xshen/autoclose.nvim** Autoclose symbols
* **numToStr/Comment.nvim** Comments

### LSP
* **williamboman/mason.nvim** LSP package manager
* **williamboman/mason-lspconfig.nvim** LSP congiguration
* **neovim/nvim-lspconfig** LSP congiguration

### Git
* **lewis6991/gitsigns.nvim** Git integration

## 🫶🏻 Acknowledgements

This project builds upon the Neovim ecosystem and the work of the broader open-source community.
Special thanks to the maintainers of the plugins and tooling that make modern Neovim development possible. ❤️
