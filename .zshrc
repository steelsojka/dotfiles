# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# Include z.sh script
. ~/z.sh

ulimit -n 1024

# Set name of the theme to load.
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

bindkey "kj" vi-cmd-mode

plugins=(git node npm vi-mode)

source $ZSH/oh-my-zsh.sh
