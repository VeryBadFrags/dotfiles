export XDG_CONFIG_HOME="$HOME/.config"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='hx'
fi

if [ "$(command -v zed)" ]; then
  export VISUAL="zed"
elif [ "$(command -v code)" ]; then
  export VISUAL="code"
fi
