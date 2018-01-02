#!/bin/bash

pmset -a hibernatemode 0
rm /var/vm/sleepimage
mkdir /var/vm/sleepimage
pmset -a standby 0
pmset -a autopoweroff 0
