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
	nixpkgs.chezmoi \
	nixpkgs.vscodium

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# Pull down and initialize chezmoi to have all conf files ready
chezmoi init --apply --verbose https://github.com/ArashiJF/dotfiles.git

