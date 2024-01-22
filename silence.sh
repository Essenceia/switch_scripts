#!/bin/bash

# configuation file
CONFIG=config.sh

# Source username and passpord
if [ ! -f $CONFIG ]; then
    echo "File $CONFIG not found."
	exit 1
fi
source $CONFIG
printf "sourcing configuration file, set variables :\nhostname:$HOST\nuser:$USER\npassword:$PW\ntarget pwm:$PWM\n"

# Call execpt on switch and shut it up
expect switch.expect $HOST $PWM $USER $PW 
