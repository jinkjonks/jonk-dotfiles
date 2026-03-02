# my dotfiles

Dotfiles managed with [devbox](https://www.jetify.com/devbox) and [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

1. Install devbox:
```bash
curl -fsSL https://get.jetify.com/devbox | bash
```

2. Clone this repo and run the init script:
```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
./init.sh
```

## Package Management

- **CLI Tools**: Managed by devbox (neovim, stow, fnm, starship, ripgrep, fzf, etc.)
- **GUI Apps**: Managed by Homebrew (kitty, 1password, raycast, arc, etc.)

### Adding CLI packages
```bash
devbox add <package-name>
```

### Adding GUI apps
```bash
brew install <app-name>
```

## Stow Commands

Apply dotfiles:
```bash
stow -R --dotfiles shell
stow -R --dotfiles macos-shell
stow -R --dotfiles neovim
```

Or use the helper function (after sourcing zshrc):
```bash
stew shell
stew macos-shell
stew neovim
```
