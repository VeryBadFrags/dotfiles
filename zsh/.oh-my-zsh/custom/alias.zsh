# For a full list of active aliases, run `alias`

alias gwatch="while true; do reset; git st; sleep 60; done"
alias unzipall="find ./ -name \*.zip -exec unzip {} \;"

# bat - https://github.com/sharkdp/bat
if [ "$(command -v bat)" ]; then
    alias cat="bat"
    export BAT_THEME="Dracula"
    # bat can be used as a colorizing pager for man, by setting the MANPAGER environment variable:
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
elif [ "$(command -v batcat)" ]; then
    alias bat="batcat"
fi

# eza - https://github.com/eza-community/eza
if [ "$(command -v eza)" ]; then
    unalias -m 'll'
    #alias ls='exa -G --color auto'
    alias ll="eza -la --git --icons"
    alias tree="eza -T --icons"
else
    alias ll="ls -laFGh"
fi

# VSCode
if [ "$(command -v code)" ]; then
    alias dotfilescfg="code ~/.dotfiles/"
else
    alias dotfilescfg="nvim ~/.dotfiles/"
fi

# Node
## npm-check-updates - https://github.com/raineorshine/npm-check-updates
alias ncu="pnpx npm-check-updates"
## Recusviely clean up node_modules/ - https://github.com/voidcosmos/npkill
alias npkill="pnpx npkill"

# APIs
alias cht="curl cht.sh" # Cheat sheet
alias weather="curl \"https://wttr.in/?mn\""

# Misc

# Ramdisk script
# ramdisk=~/macos/ramdisk.sh
# if [ -f $ramdisk ]; then
#     alias ramdisk=$ramdisk
# else
#     unset ramdisk
# fi
