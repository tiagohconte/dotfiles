#!/bin/sh

sensors | grep Tctl | awk '{print substr($2, 2, length($2)-5)}' | tr "\\n" " " | sed 's/ /°C  /g' | sed 's/  $//'
