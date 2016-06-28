#!/bin/bash -e

#  AndroidEmulator.sh
#  BuildAgentMac
#
#  Created by Matthew Herod on 22/06/2016.
#

which VBoxManage || source ~/.bash_profile

APPDIR="/Applications"

# echo "Quitting any existing Genymotion players"
# osascript -e 'quit app "player"'

# sleep 10

find "$APPDIR" -name "Genymotion.app" -type d -print -maxdepth 1 | while read GMAPP ; do

    echo "$GMAPP"

    find "$GMAPP" -name "player.app" -type d -print | while read PLAYERAPP ; do

        echo "$PLAYERAPP"

        VBoxManage list vms | grep "API" | awk -F'"' '{ print $2 }' | while read VMNAME ; do

            echo "Starting $VMNAME"

            open -g -W -a "$PLAYERAPP" --args --vm-name "$VMNAME"

            exit 0

        done

    done
done


