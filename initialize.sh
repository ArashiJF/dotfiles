# Install pyenv
# Added here as this is when we have the zsh terminal initialized
if [ -e ~/.pyenv ]; then
    echo ".pyenv was already there, getting rid of it" && rm -rf ~/.pyenv
fi

curl https://pyenv.run | zsh

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
# Srcery theme
codium --install-extension srcery-colors.srcery-colors
# NVIM motions
codium --install-extension asvetliakov.vscode-neovim

# Install Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
