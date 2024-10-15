## GOOD OLD APT-GET AM I RIGHT??!?!

brew on linux looking mad interesting rn

# Tools

- Codium with the necessary extensions added
- NVM for node
- Pyenv for python
- Go for Go

# Terminal

- Didn't see the point with kitty, added more configs
- gnome terminal is fine, iterm on mac is fine but I don't really use terminal extensively besides running specific commands or utils.
- Let's try again integrated vscode terminal, surely 6 years later it should be better now and wouldn't hang and crash with angular/react like before.

# Dotfile management

Chezmoi borked a lot for me so just gonna use bash and symlinks

- [Reference](https://freddiecarthy.com/blog/make-your-dotfiles-portable-with-git-and-a-simple-bash-script)

# Initialization steps

- Assuming we have curl we can download the repo directly to the machine and run the install script from the get go
```
bash -c "$(curl -#fL raw.githubusercontent.com/ArashiJF/dotfiles/main/install)"
```

- Initialize adds codium plugins and other miscelaneus stuff to configure/customize the tools.

```
bash ./initialize.sh
```