#!/bin/bash

# Set read & write access for file
alias setwrite="chmod +r"			# give read permission to other users
alias setread="chmod +w"			# give write permission to other users
alias setexec="chmod +x"			# give execution permission to other users
alias setnoaccess="chmod 700"		# deny other users access
alias setreadonly="chmod 755"		# give full access to self, read & execute to others
alias setfullaccess="chmod 777"		# everyone can read, write, and execute
