.PHONY: help
help:
	@echo "Usage:"
	@echo "  make git"
	@echo "  make nvim"
	@echo "  make zsh"

.PHONY: git
git:
	stow git

.PHONY: nvim
nvim:
	stow nvim

.PHONY: zsh
zsh:
	stow zsh
