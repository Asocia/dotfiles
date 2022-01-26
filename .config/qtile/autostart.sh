#!/bin/sh

function run {
	if ! pgrep $1 > /dev/null ;
	then
		$@&
	fi
}

#feh --bg-scale /usr/share/endeavouros/backgrounds/endeavouros-wallpaper.png

nitrogen --save --set-zoom-fill ~/Pictures/Wallpapers/default.jpg
run picom & disown # --experimental-backends --vsync should prevent screen tearing on most setups if needed

# Low battery notifier
#~/.config/qtile/scripts/check_battery.sh & disown

# Start welcome
#run eos-welcome & disown
$HOME/.config/qtile/polybar/default/launch.sh & disown
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & disown # start polkit agent from GNOME
