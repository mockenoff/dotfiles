# dotfiles

Bash, vim, and other dotfiles.

## Setup

1. Install [Homebrew](https://brew.sh/)
2. Install [Alfred](https://www.alfredapp.com/)
3. Install [Sublime](https://www.sublimetext.com/)

```bash
$ brew install bash bash-completion@2
$ BASHPATH=$(brew --prefix)/bin/bash
$ sudo bash -c 'echo $(brew --prefix)/bin/bash >> /etc/shells'
$ chsh -s /usr/local/bin/bash
```

```bash
$ brew install slate
$ cp .slate ~/.slate
```

```bash
$ brew install iterm2
$ cp Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```

```bash
$ brew install pyenv pyenv-virtualenv
$ cp .vimrc ~/.vimrc
$ cp -R .vim ~/.vim
$ cp bin/imgcat /usr/local/bin/imgcat
```

```bash
$ brew install nvm
$ mkdir ~/.nvm
```

### Optional

```bash
$ brew install macdown
```

## Todo

[ ] Replace Slate with [hammerspoon](https://github.com/Hammerspoon/hammerspoon) (with [miro](https://github.com/miromannino/miro-windows-manager)) or [Rectangle](https://github.com/rxhanson/Rectangle)
