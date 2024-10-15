# Install base dependencies
sudo apt update
sudo apt -y --ignore-missing install $(< packages.list)

# add vscodium deb ppa
printf "\n\nAdding VSCodium"
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt update && sudo apt -y --ignore-missing install codium

# nvm
printf "\n\nAdding NVM"
if [ -e ~/.nvm ]; then
    # https://github.com/nvm-sh/nvm?tab=readme-ov-file#uninstalling--removal
    echo "nvm install found, removing"
    nvm_dir="${NVM_DIR:-~/.nvm}"
    nvm unload
    rm -rf "$nvm_dir"
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# GO
printf "\n\nAdding GO"
if [ -e /usr/local/go ]; then
    echo "Go install found, removing first" && rm -rf /usr/local/go
fi

# latest version
goVersion="$(curl --silent "https://go.dev/VERSION?m=text")"

# checks architecture
lscpu | grep ARM 1>/dev/null && ARCH=arm64 || ARCH=amd64

# downloads latest binary for that arch
curl -O https://go.dev/dl/${goVersion}.linux-${ARCH}.tar.gz

# adds it to usr local
tar -C /usr/local -xzf ${goVersion}.linux-${ARCH}.tar.gz

# Remove downloaded binary after it has been extracted
rm ${goVersion}.linux-${ARCH}.tar.gz

# Install pyenv
printf "\n\nAdding Pyenv"
# Added here as this is when we have the bash terminal initialized
if [ -e ~/.pyenv ]; then
    echo "pyenv install found, removing first" && rm -rf ~/.pyenv
fi

# Add the system dependencies for pyenv
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

curl https://pyenv.run | bash
