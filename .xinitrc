if [ -f /usr/bin/i3 ]; then
    xsetroot -solid "#32302f"
	xrandr --output DP-0 --mode 1920x1080 --rate 240
    xset s off
    xset -dpms
    xset s noblank
	exec i3 &> /dev/null
fi

