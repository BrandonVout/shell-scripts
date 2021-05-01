#!/bin/bash

# add template README file to current directory

# destination
DEST_README="./README"

# local readme locations
LOCAL_README_PATH="$HOME/.readmes"
README="$LOCAL_README_PATH/README.md"
README_GAME="$LOCAL_README_PATH/README.game.md"

# copy local readme to current directory
alias cp-readme='cp $README $DEST_README'
alias cp-rm='cp $README $DEST_README'

alias cp-readme-game='cp $README_GAME $DEST_README'
alias cp-rm-g='cp $README_GAME $DEST_README'
