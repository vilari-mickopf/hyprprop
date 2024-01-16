PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
SHAREDIR ?= $(PREFIX)/share/hyprprop

install: event_handler hyprprop
	@install -Dm644 event_handler --target-directory "$(SHAREDIR)"
	@sed 's|^EVENT_HANDLER=.*|EVENT_HANDLER="$(SHAREDIR)/event_handler"|' hyprprop \
		| install -Dm755 /dev/stdin "$(BINDIR)/hyprprop"
