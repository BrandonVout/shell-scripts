#!/bin/bash

# run novelWriter
function novelwriter() {
  python3 ${HOME}/Repos/Tools/novelWriter/novelWriter.py
}

# update novelWriter
# function novelwriter-update() {
# 	DIR="$PWD"
# 	cd "${HOME}/Repos/Tools/novelWriter"
# 	git fetch origin
# 	cd "$DIR"
# }
