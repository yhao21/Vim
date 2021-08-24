#!/bin/bash



## method 1:

#ping -c 1 -q google.com >&/dev/null
## $? stands for the return value of the upper command
#result=$?
#
## you must have leave space at both sides of []
#if [ $? == 0 ]
#then
#				checkupdates | wc -l
#fi
#
#

## method 2
ping -c 1 -q google.com >&/dev/null; if [ $? == 0 ]; then echo yes; fi
