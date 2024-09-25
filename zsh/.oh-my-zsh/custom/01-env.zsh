# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if [ "$(command -v code)" ]; then
  export VISUAL="code"
elif [ "$(command -v zed)" ]; then
  export VISUAL="zed"
fi

# Some Brew tools are installed to /usr/local/sbin
# export PATH="/usr/local/sbin:$PATH"
