#!/bin/sh

#  TeamCityBuildAgent.sh
#  BuildAgentMac
#
#  Created by Matthew Herod on 22/06/2016.
#

source ~/.bash_profile

find /Library -name "buildAgent" 2>/dev/null | while read buildAgent; do
    "$buildAgent/bin/agent.sh" stop force
    "$buildAgent/bin/agent.sh" run
    wait
done
