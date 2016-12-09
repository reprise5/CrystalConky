#!/bin/bash

#Gets the directory you put the modules to conky in, so that thi script's working directory
#is in the relevant place.
current="$(readlink -f $(dirname "$0"))"
previous="$(pwd)"
cd "$current"

#conky -c ./nameOfModule
#conky -c ./temp-rc   <<integrated into right-rc.  But you can use this module seperqtely if you'd like. just uncomment it.'
conky -c ./right-rc #&  if adding more modules AT ONCE, unhash the & symbol, and add the names of your modules below in same format.


