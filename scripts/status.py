#!/usr/bin/env python3

from datetime import datetime
from psutil import disk_usage, sensors_battery
from psutil._common import bytes2human
from sys import stdout
from time import sleep

def write(data):
    stdout.write('%s\n' % data)
    stdout.flush()

def refresh():
    disk = bytes2human(disk_usage('/').free)
    battery = int(sensors_battery().percent)
    status = "Charging" if sensors_battery().power_plugged else "discharging"
    date = datetime.now().strftime('%h %d %A %H:%M')
    format = "Disk: %s | Battery: %s%%🔋%s | Date: %s"
    write(format % (disk, battery, status, date))

while True:
    refresh()
    sleep(1)

