#!/bin/bash

# add template README file to current directory

# destination
DEST_README="./README"

# local readme locations
LOCAL_README_PATH="$HOME/Development/Templates/readme-templates"
README="$LOCAL_README_PATH/readme.generic.md"
README_GAME="$LOCAL_README_PATH/readme.game.md"

# copy local readme to current directory
alias cp-readme='cp $README $DEST_README'
alias cp-rm='cp $README $DEST_README'

alias cp-readme-game='cp $README_GAME $DEST_README'
alias cp-rm-g='cp $README_GAME $DEST_README'
