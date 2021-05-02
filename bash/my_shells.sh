#!/bin/bash

# Add this to .profile:
# Setting PATH for my custom shell scripts
#PATH="${HOME}/My/Shells/Dir/Path/Shell:${PATH}"
#export PATH

# Add source my_shells.sh to .bashrc

# source custom shell scripts
source "update_all.sh"
source "checksum.sh"
source "manuskript.sh"
source "etherpad.sh"
source "toggle_hidden.sh"
source "add_license.sh"
source "add_readme.sh"
source "add_ignore.sh"
source "read_write.sh"

# source scripts made by others
OTHER_SHELLS="$HOME/Shells"
# source $HOME/.oh-my-git/prompt.sh
source "$OTHER_SHELLS/bash/rst_to_md.sh"

# Goto my custom shell folder(s)
alias myshells='cd $HOME/Development/Shell'	# local shells made by me
alias lshells='cd $OTHER_SHELLS'			# local shells (not made by me)
alias gshells='cd "$HOME/Google Drive/1_Sync_Unenc/MyProjects/Shell"'
