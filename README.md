# my dotfiles

Dotfiles managed with [devbox](https://www.jetify.com/devbox) and [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

### Quick Start

1. Clone this repo:
```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
```

2. Run the init script:
```bash
./init.sh
```

The init script will:
- Install devbox for CLI tool management
- Symlink all dotfiles using GNU Stow (`shell`, `macos-shell`, `neovim`, `devbox`)
- Install CLI tools globally via devbox
- Install Homebrew for macOS apps
- Install GUI applications (Kitty, 1Password, Raycast, Arc, etc.)
- Install fonts (Zed Mono Nerd Font)

### Manual Installation

If you prefer to install components individually:

1. Install devbox:
```bash
curl -fsSL https://get.jetify.com/devbox | bash
```

2. Symlink dotfiles with stow:
```bash
stow -R --dotfiles shell
stow -R --dotfiles macos-shell
stow -R --dotfiles neovim
stow -R --dotfiles devbox
```

3. Install CLI tools:
```bash
devbox global install
```

4. Install Homebrew and GUI apps (optional):
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask kitty 1password raycast spotify arc
brew install font-zed-mono-nerd-font
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

## Adding New Sync Configurations

To add new dotfiles to be managed by stow:

1. **Create a package directory** in the dotfiles repo:
```bash
mkdir -p ~/dotfiles/my-package
```

2. **Mirror the home directory structure** using `dot-` prefix for hidden files/directories:
```bash
# For ~/.config/app/config.conf
mkdir -p ~/dotfiles/my-package/dot-config/app
cp ~/.config/app/config.conf ~/dotfiles/my-package/dot-config/app/

# For ~/.myrc
cp ~/.myrc ~/dotfiles/my-package/dot-myrc
```

3. **Apply the configuration** with stow:
```bash
stow -R --dotfiles my-package
```

The `--dotfiles` flag transforms `dot-` prefixes to `.` when symlinking.

### Example: Adding a new application config

```bash
# Create package directory
mkdir -p ~/dotfiles/git

# Add git config
cp ~/.gitconfig ~/dotfiles/git/dot-gitconfig

# Apply with stow
stow -R --dotfiles git

# Add to init.sh for future installations
echo "stow -R --dotfiles git" >> init.sh
```

### Stow Tips

- **Remove symlinks**: `stow -D package-name`
- **Dry run**: `stow -n -v package-name` (preview changes)
- **Target directory**: stow uses parent directory as target by default (`~/dotfiles` → `~`)
- **Conflicts**: stow will warn if files already exist; remove or backup originals first
