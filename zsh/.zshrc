# Brew completions (before compinit)
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load - https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM=~/.config/zsh-custom

# Lazy startup for nvm
zstyle ':omz:plugins:nvm' lazy yes

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  mise
  starship # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/starship
  zoxide
  )

source $ZSH/oh-my-zsh.sh

# User configuration

# Atuin - Bind ctrl-r but not up arrow - https://github.com/atuinsh/atuin
if [ "$(command -v atuin)" ]; then
  eval "$(atuin init zsh --disable-up-arrow)"
fi

# zsh-syntax-highlighting - https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
