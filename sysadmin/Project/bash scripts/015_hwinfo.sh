#!/bin/bash

get_hwinfo () {
lscpu | grep '^Model name'
lscpu | grep '^CPU(s)'
lscpu | grep '^Vendor ID'
lscpu | grep '^CPU MHz'
cat /proc/meminfo | grep 'MemTotal'
}

get_hwinfo
