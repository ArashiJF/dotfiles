# Bootstrap

The install sh will install most of the utilities needed that the other programs depend on:

```
./install.sh
```

After install is done, logout to ensure everything is started properly.

When you open the terminal again you would see zsh getting started. Then you should execute initialize to install codium with its plugins and pyenv.

```
./initialize.sh
```

Then you will need to set up kitty manually because no idea to do this through bash

> If .local/bin not created execute

```sh
mkdir -p .local/bin
```

> Create symlink

```sh
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
```

> Place the kitty.desktop file somewhere it can be found by the OS

```sh
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/application/
```

> If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file

```sh
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
```

> Update the paths to the kitty and its icon in the kitty.desktop file(s)

```sh
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
```
