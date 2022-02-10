export ZPLUG_HOME=$(brew --prefix)/opt/zplug
export ZSH="$HOME/.oh-my-zsh"
export HOMEBREW_NO_INSTALL_CLEANUP=true

export EDITOR="nvim"

ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

source $ZPLUG_HOME/init.zsh
# Plugins list
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zdharma-continuum/fast-syntax-highlighting", defer:2
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/copydir", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/jsontools", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
