# Tools

- [mise](https://mise.jdx.dev/)
- various bash scripts to automate initial setup

# Terminal

- whatever the distro has.
- whatever the IDE has.

oh-my-posh makes it pretty

# Dotfile management

- [Reference](https://freddiecarthy.com/blog/make-your-dotfiles-portable-with-git-and-a-simple-bash-script)

# Initialization steps

- Assuming we have curl we can download the repo directly to the machine and run the install script from the get go

```
bash -c "$(curl -#fL https://raw.githubusercontent.com/ArashiJF/dotfiles/refs/heads/main/utils)"
```

- Previous script will leave you at the dotfiles root, execute

```
bash bootstrap_all
```

- Pull fonts adds the fonts used for terminal customization

```
bash pull-fonts
```

- Import the base profile to vscode/codium with the profile importer in settings > profiles

- Set the font in the external terminal app to the intel one downloaded by pull-fonts

# Updating deps

- Refer to the init_scripts case statement at bottom to see which functions can be called with:
```
./init_scripts <func name>
```
- mise has upgrade command [reference](https://mise.jdx.dev/cli/)

# Testing

- All the installation scripts are in the init_scripts file, if you need to test or trigger a specific func after the fact you can use

```
source ./init_scripts; <func name>
```
