#!/bin/bash

get_userprocesses() {
    ps -efl | grep $1
}

get_userprocesses "$1"
