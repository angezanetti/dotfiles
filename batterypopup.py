#!/usr/bin/python

import subprocess as s

batcapacity = open("/sys/class/power_supply/BAT0/capacity","rb").read().strip()
batsatus = open("/sys/class/power_supply/BAT0/status","rb").read().strip()
print batcapacity
print batsatus

if batsatus == 'Discharging' and batcapacity > 100:
    s.call(['notify-send','/!\ low battery',batcapacity])
