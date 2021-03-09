if [ -f /usr/bin/i3 ]; then
	xrandr --output DP-4 --mode 1920x1080 --rate 240
	exec i3
fi
