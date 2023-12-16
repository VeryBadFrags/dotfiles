# Powerlevel10k

Powerlevel10k is a theme for Zsh.

<https://github.com/romkatv/powerlevel10k>

## Setup (if not using [Prezto](https://github.com/sorin-ionescu/prezto))

### macOS

1. Install

    ```sh
    brew install powerlevel10k
    ```

2. Link brew install as an omz plugin

    ```sh
    mkdir -p $ZSH_CUSTOM/themes/powerlevel10k/
    ln -s  $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme $ZSH_CUSTOM/themes/powerlevel10k
    ```
