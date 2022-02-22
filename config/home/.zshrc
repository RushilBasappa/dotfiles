case `uname` in
  Darwin)
    export ZPLUG_HOME=$(brew --prefix)/opt/zplug
    export HOMEBREW_NO_INSTALL_CLEANUP=true
  ;;
  Linux)
    export ZPLUG_HOME=${HOME}/.zplug
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac

export PATH="$HOME/.pyenv/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

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
zplug "plugins/copydir", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/jsontools", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

alias ws="cd ~/Workspace"
alias sojern="cd ~/Workspace/Sojern"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rushil/google-cloud-sdk/path.zsh.inc' ]; then . '/home/rushil/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rushil/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/rushil/google-cloud-sdk/completion.zsh.inc'; fi
