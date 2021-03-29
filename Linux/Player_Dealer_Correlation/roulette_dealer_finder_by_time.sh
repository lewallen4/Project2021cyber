#!/bin/bash

echo "Enter Date of Lookup (4 consecutive digits only, IE: 0310 or 0312)"

read Date

echo "Enter Time of Lookup (XX:XX:XX XM, IE: 08:00:00 PM or 02:00:00 AM)"

read Time

cat $Date* | grep "$Time" | awk '{print $5,$6}'

