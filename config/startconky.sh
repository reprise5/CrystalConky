#!/bin/bash
current="$(readlink -f $(dirname "$0"))"
previous="$(pwd)"
cd "$current"
conky -c ./right &
#conky -c ./rings &
#conky -c ./cpu &
#conky -c ./mem &
#conky -c ./gmail
