# dotfiles

Bash, vim, and other dotfiles.

## Setup

```bash
$ brew install bash bash-completion@2
$ BASHPATH=$(brew --prefix)/bin/bash
$ sudo bash -c 'echo $(brew --prefix)/bin/bash >> /etc/shells'
$ chsh -s /usr/local/bin/bash
```

