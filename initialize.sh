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

# Install Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

if [ "$(uname -s)" = "Linux" ]; then
    # Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in
    # your system-wide PATH)
    ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
    # Place the kitty.desktop file somewhere it can be found by the OS
    cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
    # If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
    cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
    # Update the paths to the kitty and its icon in the kitty.desktop file(s)
    sed -i "s|Icon=kitty|Icon=~/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
    sed -i "s|Exec=kitty|Exec=~/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
fi