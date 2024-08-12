#!/bin/bash

# run Manuskript
function manuskript() {
  ${HOME}/Repos/Tools/manuskript/bin/manuskript
}

# update Manuskript
function manuskript-update() {
  DIR="$PWD"
  cd "${HOME}/Repos/Tools/manuskript"
  git fetch origin
  cd "$DIR"
}
