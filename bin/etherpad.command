#!/bin/bash

# development mode is slower than production but DirtyDB is not reccommended for production
export NODE_ENV=production
${HOME}/Repos/Tools/etherpad-lite/src/bin/run.sh
