# Pre-requisites

## MacOS

Install iTerm2. Standard Terminal app doesn't work very well for some reason with NeoVIM.

`brew install --cask iterm2`

# Installation

- [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim).
- Install one of patched [Nerd Fonts](https://www.nerdfonts.com/font-downloads). For example Hack Nerd Font.
    - On Fedora
        - Unzip to `~/.local/share/fonts/<some-name>/`.
        - Refresh font cache with `fc-cache -v`. Safely ignore "looped directory" messages.
        - Restart terminal, select new font in profile.
    - On MacOS
        - `brew tap homebrew/cask-fonts`
        - `brew install --cask font-hack-nerd-font`
- Install other packages
    - `npm` - needed for some LSP servers (eg `ansiblels`)
    - `ripgrep` - needed by `telescope` (`brew install ripgrep`)
- Clone this repo to `~/.config/nvim`. Create if does not exist.
- Run `nvim`...

# Structure

- `init.lua` disables `netrw` (as we're going to use NvimTree instead) and loads the rest of the configuration from `lua/` directory.
- `keymaps.lua` deals with keymap configuration.
- `options.lua` sets various NeoVim options, such as tab spacing, etc.
- `plugins.lua` installs Lazy package manager, and installs and loads other plugins.
- `plugins/*.lua` deals with individual plugin configuration.

# Plugins

## ToggleTerm

Open/Close with `Ctrl-\`

## NvimTree

Configured to open on NVIM start.

## LSPZero

# Notes

- Cycle through windows (and jump to a floating pop up): `^w ^w`
- PopUp list navigation: `^p` / `^n`
- Spell check
    - Enable `:set spell`
    - Show suggestions: `z=`
- Close autocomplete popup: `^e`
- Buffer management window: `M-m`
- Searching (with `telescope`)
    - Find files in current dir tree `\ff`
    - Grep in current dir tree `\fg`
