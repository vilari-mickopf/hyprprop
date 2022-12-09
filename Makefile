PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
SHAREDIR ?= $(PREFIX)/share/hyprprop

install: event_handler hyprprop
	@install -Dm644 event_handler --target-directory "$(SHAREDIR)"
	@install -Dm755 hyprprop --target-directory "$(BINDIR)"
