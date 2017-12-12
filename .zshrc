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

ulimit -n 65536

# Set name of the theme to load.
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

bindkey "kj" vi-cmd-mode

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

plugins=(git node npm vi-mode chucknorris)

source $ZSH/oh-my-zsh.sh

chuck_cow
