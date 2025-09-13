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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
  macos # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos
  mise # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/mise
  starship # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/starship
  zoxide # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zoxide
  zsh-syntax-highlighting # https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
  )

source $ZSH/oh-my-zsh.sh

# User configuration

# Atuin
if [ "$(command -v atuin)" ]; then
  # Bind ctrl-r but not up arrow
  eval "$(atuin init zsh --disable-up-arrow)"
else
  echo "atuin not found - See https://github.com/atuinsh/atuin"
fi
