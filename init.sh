echo 'Install Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'Installing packages'
curl -LsSf https://astral.sh/uv/install.sh | sh
brew install fnm
brew install neovim
brew install stow

echo 'Installing shell'
brew install wezterm starship
brew install zsh zsh-syntax-highlighting zsh-autosuggestions
brew install macchina ccat lsd fzf ripgrep ast-grep
brew install unzip wget curl gzip

brew install lazygit

echo 'Installing UI setup'
brew install font-zed-mono-nerd-font
brew install felixkratz/formulae/borders
brew install felixkratz/formulae/sketchybar
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

echo 'Install programs'
brew install 1password raycast spotify suspicious-package mullvadvpn betterdisplay karabiner-elements keka apparency appcleaner arc 1password-cli vscodium

stow -R --dotfiles shell
