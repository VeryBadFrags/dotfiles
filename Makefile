.PHONY: help
help:
	@echo "Usage:"
	@echo "  make git"
	@echo "  make nvim"
	@echo "  make p10k"
	@echo "  make zsh"

.PHONY: git
git:
	stow git

.PHONY: nvim
nvim:
	stow nvim

.PHONY: p10k
p10k:
	stow p10k

.PHONY: zsh
zsh:
	stow zsh
