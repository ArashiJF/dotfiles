# Install pyenv
# Added here as this is when we have the zsh terminal initialized
curl https://pyenv.run | zsh

# Pull down and initialize chezmoi
chezmoi init --apply --verbose https://github.com/ArashiJF/dotfiles.git

# Add vscodium extensions
# Git graph
codium --install-extension mhutchie.git-graph
# Prettier
codium --install-extension esbenp.prettier-vscode
# Eslint
codium --install-extension dbaeumer.vscode-eslint
# Python tools
codium --install-extension ms-python.python
# Go tools
codium --install-extension golang.go
# Catpuccin theme
codium --install-extension catppuccin.catppuccin-vsc-pack
# NVIM motions
codium --install-extension asvetliakov.vscode-neovim