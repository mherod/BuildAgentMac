#!/bin/sh

#  AndroidSdkUpdate.sh
#  BuildAgentMac
#
#  Created by Matthew Herod on 28/06/2016.
#

source ~/.bash_profile

find /Library -name "android-sdk*" 2>/dev/null | while read androidsdk; do
    $androidsdk/tools/android update sdk --no-ui
done
