#!/bin/bash

get_kernel_OS() {
    uname -r
}

get_hwinfo () {
lscpu | grep '^Model name'
lscpu | grep '^CPU(s)'
lscpu | grep '^Vendor ID'
lscpu | grep '^CPU MHz'
cat /proc/meminfo | grep 'MemTotal'
}

get_userprocesses() {
    ps -efl | grep $1
}

get_kernel_OS
get_hwinfo
get_userprocesses "$1"
