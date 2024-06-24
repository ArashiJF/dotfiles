# Install what is available through apt-get
sudo apt update
sudo apt -y --ignore-missing install $(< packages.list)

# The rest is stupid, so lets follow its instructions (considering Arch a lot atm...)
printf "\n\nAdding antidote for zsh plugins"

# Antidote git install
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Chezmoi
printf "\n\nAdding chezmoi and initializing it with repo"
/bin/zsh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --verbose https://github.com/ArashiJF/dotfiles.git

# vscodium deb ppa
printf "\n\nAdding VSCodium"
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt update && sudo apt -y --ignore-missing install codium

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
chsh -s $(which zsh) $(whoami)
