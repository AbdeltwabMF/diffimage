# diffimage - A visual diffs for the images.
.POSIX:

SHELL := /bin/bash

LOCAL_PREFIX := $(HOME)/.local

# ANSI colors for shell output
BLACK := \033[0;30m
RED := \033[0;31m
GREEN := \033[0;32m
YELLOW := \033[0;33m
BLUE := \033[0;34m
PURPLE := \033[0;35m
CYAN := \033[0;36m
WHITE := \033[0;37m
NC := \033[0m # No Color

# ANSI colors for shell output (bold)
BBLACK := \033[1;30m
BRED := \033[1;31m
BGREEN := \033[1;32m
BYELLOW := \033[1;33m
BBLUE := \033[1;34m
BPURPLE := \033[1;35m
BCYAN := \033[1;36m
BWHITE := \033[1;37m

install:
	mkdir -p $(DESTDIR)$(LOCAL_PREFIX)/bin
	cp -u diffimage $(DESTDIR)$(LOCAL_PREFIX)/bin/
	@printf "%b" "$(CYAN)diffimage$(GREEN) Installed Successfully!$(NC)\n"

uninstall:
	rm -f $(DESTDIR)$(LOCAL_PREFIX)/bin/diffimage
	@printf "%b" "$(CYAN)diffimage$(GREEN) uninstalled.$(NC)\n"

.PHONY: all install uninstall
