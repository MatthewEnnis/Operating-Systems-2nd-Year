#!/bin/sh
echo "\nPhysical & swap allocated and free:\n"
free -m
echo "\nPage size:\n"
getconf PAGESIZE
echo "\nPage faults:\n"
ps -o pid,min_flt,maj_flt,cmd
