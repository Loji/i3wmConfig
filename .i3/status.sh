#!/bin/bash

battery=`acpi | cut -d " " -f 4-7`
date=`date +"%H:%M %d/%m/%y"`
temp=`sensors | grep Other | awk '{print $2}'`
gpu=`sensors | grep GPU | awk '{print $2}'`
cpu=`sensors | grep CPU | awk '{print $2}'`
rpm=`sensors | grep 'Processor Fan' | awk '{print $3}'`

echo "$battery | $rpm RPM | CPU $cpu | GPU $gpu | $temp | $date "
