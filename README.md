# Bootstrap

The install sh will install most of the utilities needed that the other programs depend on:

```
./install.sh
```

After install is done, logout to ensure everything is started properly.

When you open the terminal again you would see zsh getting started. Then you should execute initialize to add kitty, set up codium configs and extensions.


```
./initialize.sh
```

This will execute chezmoi to pull from the repo and apply the changes immediately.

# Package manager

Uses nix-env for pulling and mantaining the packages versions, the list are:

- git
- zsh
- antidote
- neovim
- bat
- chezmoi

## Zsh plugins

- lukechilds/zsh-nvm
- robbyrussell/oh-my-zsh path:plugins/colored-man-pages
- robbyrussell/oh-my-zsh path:plugins/command-not-found
- romkatv/powerlevel10k
- zsh-users/zsh-autosuggestions
- zsh-users/zsh-completions
- zsh-users/zsh-syntax-highlighting

# IDE and other stuff

- VScodium - Handled by install.sh, plugins added by initialize.sh
  - Git graph
  - Prettier
  - Eslint
  - Python
  - Go
  - Catpuccin theme/icons
- Kitty - [Binary install](https://sw.kovidgoyal.net/kitty/binary/#desktop-integration-on-linux)

# Languajes

- Python - Handled by initialize.sh
- Node - Handled by zsh-nvm
- Go - [Install](https://go.dev/doc/install)
  - PATH set up in .zshrc