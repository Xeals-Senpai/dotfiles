if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	echo "Starting sway....\n"
	echo "Loading all resources\n"
	echo "Welcome back $USERNAME!!!\n"
	echo "Enjoy, have fun and get cracking!\n"
	unset DISPLAY
	exec sway
fi
