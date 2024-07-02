#!/bin/bash

CHOICE=$(echo -e "powerOff\nrestart\nlogOut\nsuspend" | dmenu -i -p 'Choose an action:')

case "$CHOICE" in
    powerOff)
        systemctl poweroff
        ;;
    restart)
        systemctl reboot
        ;;
    logOut)
        i3-msg exit
        ;;
    suspend)

        i3lock -i ~/.config/wallpaper/arch_lockscreen.jpg &
        systemctl suspend
        ;;
    *)
        ;;
esac

