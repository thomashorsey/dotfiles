# .dotfiles

## Prerequisites

### macOS

I do not use Arch, btw.

### brew

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### stow

``` bash
brew install stow
```

## Setup

### cron

``` bash
crontab ~/.dotfiles/cron/user.cron
```

### git

``` bash
brew install git gh
rm -f ~/.gitconfig ~/.gitmessage
cd ~/.dotfiles && stow git
gh auth login
```

### neovim

``` bash
brew install bob
bob use nightly
mkdir -p ~/.config
rm -rf ~/.config/nvim
cd ~/.dotfiles && stow nvim
```

### tmux

``` bash
brew install tmux
rm -f ~/.tmux.conf
cd ~/.dotfiles && stow tmux
```

### zsh

``` bash
rm -f ~/.zshrc
cd ~/.dotfiles && stow zsh
source ~/.zshrc
```

## Update

### Existing files

``` bash
cd ~/.dotfiles && git pull
```

### New files

Refer/ add to setup above.
