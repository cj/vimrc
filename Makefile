DOTFILES = $(HOME)/.vimrc.backups $(HOME)/.vimrc.vundles $(HOME)/.vimrc
SHELL = /bin/bash
CWD = $(shell pwd)

define check_file
	@if [[ -e $1 && "$(OVERWRITE)" != "1" ]]; then \
		echo "make install won't overwrite $1"; \
		echo "1) remove it yourself or 2) use 'make install OVERWRITE=1'"; \
		false \
	else true; \
	fi
endef

all:
	@echo type make install.

$(HOME)/.%: %
	$(call check_file,$@)
	ln -fs $(PWD)/$< $@

install: $(DOTFILES)
				 @echo "Clone vundle frome github.com."
				 git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
				 vim +BundleInstall +qall
				 @echo "Installation complete!"

update:
				@echo "Updating..."
				git pull
				vim +BundleInstall +qall
				@echo "Update Complete"

.PHONY: install update
