
# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file


GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"

export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD


# macOS-centric
if  which brew > /dev/null; then
	# bash completion
	if [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
		source "$(brew --prefix)/share/bash-completion/bash_completion";
	elif [ -f /etc/bash_completion ]; then
		source /etc/bash_completion;
	elif [ -f /usr/local/etc/profile.d/bash_completion.sh ]; then
		source /usr/local/etc/profile.d/bash_completion.sh
	fi;

	# homebrew completion
	source "$(brew --prefix)/etc/bash_completion.d/brew"

	# hub completion
	if  which hub > /dev/null; then
		source "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh";
	fi;
fi;


# iTerm Tab and Title Customization and prompt customization
# http://sage.ucsc.edu/xtal/iterm_tab_customization.html

# Put the string " [bash]   hostname::/full/directory/path"
# in the title bar using the command sequence
# \[\e]2;[bash]   \h::\]$PWD\[\a\]

# Put the penultimate and current directory
# in the iterm tab
# \[\e]1;\]$(basename $(dirname $PWD))/\W\[\a\]


if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

