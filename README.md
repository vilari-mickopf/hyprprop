# hyprprop
xprop for Hyprland


## Dependencies
- `hyprland` obviously
- [hyprevents](https://github.com/vilari-mickopf/hyprevents) capture window changed events to rerun slurp
- `socat` to connect hyprevents with hyprprop events
- `slurp` to select an area on the screen
- `jq` to parse hyprctl output

## Install
```bash
yay -S hyprprop-git
```
or
```bash
sudo make install
```

## Usage
Just run
```bash
hyprprop
```
and select desired window

## Optional special workspace case
Currently, there is no event triggered when a special workspace is opened or closed, so the only way to force slurp to redraw automatically is to add keybind for sending the signal to the hyprprop using the same key as togglespecialworkspace:
```
bind = $mod, <KEY>, togglespecialworkspace,
bind = $mod, <KEY>, exec, kill -USR1 "$(cat /tmp/hyprprop.pid)"
```
By binding both commands to the same key, Hyprland will execute them sequentially whenever the key is pressed.
