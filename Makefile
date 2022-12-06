PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
SHAREDIR ?= $(PREFIX)/share/hyprprop

install: events_handler hyprprop
	@install -Dm644 events_handler --target-directory "$(SHAREDIR)"
	@install -Dm755 hyprprop --target-directory "$(BINDIR)"
