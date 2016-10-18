#!/bin/sh

#  Avd.sh
#  BuildAgentMac
#
#  Created by Matthew Herod on 18/10/2016.
#

emulator @`emulator -list-avds | tail -n1`
