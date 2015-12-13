#!/bin/bash

# #################
# Battery Popup
# #################
# Display a popup when my battery is low
# Just add a cron task every (x) minutes to trigger that script
# #################

# Check if the battery is connected
if [ -e /sys/class/power_supply/BAT0 ]; then

    # Get the capacity
    CAPACITY=$( cat /sys/class/power_supply/BAT0/uevent | grep -i capacity | cut -d'=' -f2 )

    echo $CAPACITY;
    case $CAPACITY in
    # do stuff when we hit 11 % mark
    [0-9]|11)
        # send warning and suspend only if battery is discharging
        # i.e., no charger connected
        STATUS=$(  cat /sys/class/power_supply/BAT0/uevent | grep -i status | cut -d'=' -f2 )
         if [ $(echo $STATUS) == "Discharging" ]; then
            notify-send --icon=dialog-warning "Battery low Battery level is ${CAPACITY}%"
         fi
        ;;
    esac
fi
