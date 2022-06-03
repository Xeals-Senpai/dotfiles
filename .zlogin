if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	echo -e "Choose between sway or i3 (1 or 2):"
	read choice
	case $choice in
		1)
			unset DISPLAY
			exec sway
			;;
		2)
			exec startx
			;;
	esac
fi
