# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if [ "$(command -v mate)" ]; then
   export VISUAL="mate"
fi

# Some Brew tools are installed to /usr/local/sbin
# export PATH="/usr/local/sbin:$PATH"

# pnpm
# export PNPM_HOME=$HOME/Library/pnpm
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac
# pnpm end
