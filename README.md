# dotfiles

Bash, vim, and other dotfiles.

## Setup

1. Install [Homebrew](https://brew.sh/)
2. Install [Alfred](https://www.alfredapp.com/)
3. Install [Sublime](https://www.sublimetext.com/)

Bash is still the most reliable by virtue of being the thing that is most likely to be running on a remote machine for operations control, so let's go with that.

```bash
$ brew install bash bash-completion@2
$ BASHPATH=$(brew --prefix)/bin/bash
$ sudo bash -c 'echo $(brew --prefix)/bin/bash >> /etc/shells'
$ chsh -s $(brew --prefix)/bin/bash
```

Slate has been deprecated for a while, so we've since switched to [Hammerspace](https://www.hammerspoon.org/).

```bash
$ brew install --cask hammerspoon
$ cp -R .hammerspoon ~/.hammerspoon
```

[iTerm2](https://iterm2.com/), however, is still good to go. You will have to go into the app itself, though, to import the `iterm-default.json` profile.

```bash
$ brew install --cask iterm2
```

And of course, [Sublime Text](https://www.sublimetext.com/) is always coming along.

```bash
$ brew install --cask sublime-text
$ cp Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings
```

[pyenv](https://github.com/pyenv/pyenv) should be straightforward, but it's always something. Like you may have to manually create the symlinks to ensure that the `~/.pyenv/shims/` are built correctly or how `3.12.12` is the last version to support `orjson==3.10.5` or whatnot.

```bash
$ brew install openssl@3 readline sqlite3 xz tcl-tk@8 libb2 zstd zlib pkgconfig
$ brew install pyenv pyenv-virtualenv
$ pyenv install 3.12.12
$ pyenv global 3.12.12
$ ln -s ~/.pyenv/versions/3.12.12/bin/pip3 ~/.pyenv/versions/3.12.12/bin/pip
$ ln -s ~/.pyenv/versions/3.12.12/bin/python3 ~/.pyenv/versions/3.12.12/bin/python
```

[nvm](https://github.com/nvm-sh/nvm) has various caveats for different OS versions, so check the README first, but it should be about this simple.

```bash
$ brew install nvm
$ mkdir ~/.nvm
$ nvm install 24
```

And finally, we should get all the configuration stuff in there.

```bash
$ cp .vimrc ~/.vimrc
$ cp -R .vim ~/.vim
$ cp .gitignore_global ~/.gitignore_global
$ cp .gitconfig ~/.gitconfig
$ cp bin/imgcat /usr/local/bin/imgcat
```

### Optional

MacDown has been deprecated as well, so we've also switched to [Zettlr](https://www.zettlr.com/).

```bash
$ brew install --cask zettlr
```
