#emulate sh -c 'source /etc/profile'
# export EDITOR=vim
# neofetch
#if "$(tty)" = "/dev/tty1"; then
#	echo $(tty)
#fi
#[ ! -s ~/.config/mpd/pid ] && mpd
#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec starti3
#fi

#mpd
source ~/.zshrc
[[ "$(tty)" = "/dev/tty1" ]] && startx ~/.xinitrc i3
#[[ "$(tty)" = "/dev/tty1" ]] && printf "Ctrl+C to cancel, waiting 3 s..." && sleep 3 && startx ~/.xinitrc i3

# [[ "$(tty)" = "/dev/tty1" ]] && starti3
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startkde
