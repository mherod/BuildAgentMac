#!/bin/sh

#  Avd.sh
#  BuildAgentMac
#
#  Created by Matthew Herod on 18/10/2016.
#

source ~/.bash_profile
PATH=$ANDROID_HOME/tools:$PATH
emulator @`emulator -list-avds | tail -n1` -no-window
