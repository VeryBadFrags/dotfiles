ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share/zinit}"
source $(brew --prefix)/opt/zinit/zinit.zsh

zinit snippet OMZL::completion.zsh
zinit snippet OMZL::key-bindings.zsh

# zinit snippet OMZP::git
zinit ice wait lucid
zinit snippet OMZP::nvm
zinit snippet OMZP::zoxide

zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

# Brew completions
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  # autoload -Uz compinit
  # compinit
fi

# # Atuin - Bind ctrl-r but not up arrow
# # eval "$(atuin init zsh --disable-up-arrow)"

source ~/.dotfiles/zsh/custom/1env.zsh
source ~/.dotfiles/zsh/custom/2alias.zsh

# zstyle ':completion:*' menu select

setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space

# Should be last
zi for \
    atload"zicompinit; zicdreplay" \
    blockf \
    lucid \
    wait \
  zdharma-continuum/fast-syntax-highlighting
