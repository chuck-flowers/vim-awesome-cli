PREFIX ?= /usr/local

# System paths
SYS_BASH_COMPLETION_DIR=$(PREFIX)/share/bash-completion/completions
SYS_BIN_DIR=$(PREFIX)/bin
SYS_MAN_DIR=$(PREFIX)/share/man

# Binary
BIN_NAME=vim-awesome
BIN_FILE=$(BIN_NAME)

# Bash completion
BASH_COMPLETION_DIR=bash-completion

# Man pages
MAN_DIR=man
MAN_MARKDOWN_FILES=$(wildcard $(MAN_DIR)/*.md)
MAN_TROFF_FILES=$(patsubst $(MAN_DIR)/%.md, $(MAN_DIR)/%, $(MAN_MARKDOWN_FILES))
MAN_COMPRESSED_FILES=$(patsubst $(MAN_DIR)/%.md, $(MAN_DIR)/%.gz, $(MAN_MARKDOWN_FILES))

.PHONY: all
all: $(MAN_COMPRESSED_FILES)

.PHONY: install
install: install-bin install-completions install-man

.PHONY: install-bin
install-bin: $(BIN_FILE)
	install -Dm 755 $(BIN_FILE) $(SYS_BIN_DIR)

.PHONY: install-completions
install-completions: $(BASH_COMPLETION_DIR)/vim-awesome
	install -Dm 644 $(BASH_COMPLETION_DIR)/vim-awesome $(SYS_BASH_COMPLETION_DIR)

.PHONY: install-man
install-man: $(MAN_COMPRESSED_FILES)
	install -Dm 644 $(MAN_DIR)/*.1.gz $(SYS_MAN_DIR)/man1

.PHONY: uninstall
uninstall:
	rm $(SYS_BIN_DIR)/$(BIN_NAME)
	rm $(SYS_MAN_DIR)/man1/vim-awesome.1.gz
	rm $(SYS_BASH_COMPLETION_DIR)/vim-awesome

.PHONY: clean
clean:
	rm -f $(MAN_DIR)/*.gz
	
$(MAN_DIR)/%.gz: $(MAN_DIR)/%.md
	pandoc -sf markdown -t man $< | gzip -c - > $@

