if [ "$(command -v code)" ]; then
  export VISUAL="code"
elif [ "$(command -v zed)" ]; then
  export VISUAL="zed"
fi

# Some Brew tools are installed to /usr/local/sbin
# export PATH="/usr/local/sbin:$PATH"
