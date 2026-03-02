#!/bin/bash

echo 'Installing devbox'
curl -fsSL https://get.jetify.com/devbox | bash

echo 'Setting up dotfiles with stow'
stow -R --dotfiles shell
stow -R --dotfiles macos-shell
stow -R --dotfiles neovim
stow -R --dotfiles devbox

echo 'Installing CLI tools via devbox global'
devbox global install

echo 'Installing Homebrew for GUI apps and macOS-specific tools'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'Installing GUI applications and macOS-specific packages'
brew install --cask kitty

echo 'Installing fonts'
brew install font-zed-mono-nerd-font

echo 'Installing GUI programs'
brew install --cask 1password raycast spotify suspicious-package karabiner-elements keka apparency appcleaner arc
