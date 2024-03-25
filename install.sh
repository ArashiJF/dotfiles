# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.bat \
	nixpkgs.antidote \
	nixpkgs.chezmoi

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# Add necessary fonts for terminals and other stuff
git clone git@github.com:ryanoasis/nerd-fonts.git --depth=1 ~/nerd-fonts
cd ~/nerd-fonts; ./install.sh
rm -rf ~/nerd-fonts