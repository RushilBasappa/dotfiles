HOMEFILES:= $(shell find config/home -type f -exec basename {} \;)
DOTFILES := $(addprefix $(HOME)/, $(HOMEFILES))

all: link_git

link_git: $(foreach f, $(filter %gitconfig, $(DOTFILES)), $(f))

unlink_git:
	@for f in $(filter %gitconfig, $(DOTFILES)); do \
		if [ -h $$f ]; then \
			rm -i $$f; \
		fi; \
	done

${DOTFILES}:
	@ln -sv "$(PWD)/config/home/$(notdir $@)" $@
