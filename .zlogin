if [ "$(tty)" = "/dev/tty1" ]; then
        echo -e "Make a Choice:\n1) Sway\n2) i3"
        read WMChoice
        case $WMChoice in
                1)
                        exec sway
                        ;;
                2)
                        startx
                        ;;
        esac
fi
