.PHONY: brew
brew: ## Installs commonly used Homebrew packages and casks
	-@$(CURDIR)/brew/brew.sh

symlink_nvim: ## Symlink nvim
	ln -s $(CURDIR)/config/nvim ~/.config

symlink_zsh: ## Symlink nvim
	ln -s $(CURDIR)/config/zsh/zshrc ~/.zshrc

unlink_zsh:
	find ${HOME} -type lf -maxdepth 1 -name "*zsh*" -exec unlink {} \;

symlink_gitconf: ## Symlink gitconfig
	ln -s $(CURDIR)/config/git/gitconfig ~/.zshrc

unlink_gitconf:
	find ${HOME} -type lf -maxdepth 1 -name "*gitconfig*" -exec unlink {} \;
