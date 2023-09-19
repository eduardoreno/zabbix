#!/bin/bash
usuarios=$(snmpwalk -v2c -c $1 $2 1.3.6.1.4.1.4329.15.3.5.2.2.1.14 2> /dev/null)
echo $usuarios | awk '{ for(i=1; i<=NF;i++) j+=$i; print j; j=0 }'