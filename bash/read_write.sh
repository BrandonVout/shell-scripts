#!/bin/bash

# Set read & write access for file
alias setwrite="chmod a+r"       # give read permission to other users
alias setread="chmod a+w"        # give write permission to other users
alias setexec="chmod a+x"        # give execution permission to other users
alias setnoaccess="chmod og-rwx" # deny other users access
alias setreadonly="chmod og=r"   # give read access to others
alias setreadexec="chmod og=rx"  # give read & execute access to others
alias setreadwrite="chmod og=rw" # give read & write access to others
alias setwriteexec="chmod og=wx" # give write & execute access to others
alias setfullaccess="chmod 777"  # everyone can read, write, and execute
alias setfull="chmod 777"        # everyone can read, write, and execute
