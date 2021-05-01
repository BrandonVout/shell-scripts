#!/bin/bash

# add license to current directory

# destination
DEST_LICENSE="./LICENSE"

# local license locations
LOCAL_LICENSE_PATH="$HOME/.licenses"
AGPL3="$LOCAL_LICENSE_PATH/agpl3.txt"
APACHE2="$LOCAL_LICENSE_PATH/apache2.txt"
BSD2="$LOCAL_LICENSE_PATH/bsd2.txt"	# simplified
BSD3="$LOCAL_LICENSE_PATH/bsd3.txt"	# modified
BSL1="$LOCAL_LICENSE_PATH/bsl1.txt"
CC0="$LOCAL_LICENSE_PATH/cc0.txt"
EPL2="$LOCAL_LICENSE_PATH/epl2.txt"
GPL2="$LOCAL_LICENSE_PATH/gpl2.txt"
GPL3="$LOCAL_LICENSE_PATH/gpl3.txt"
LGPL2="$LOCAL_LICENSE_PATH/lgpl2.1.txt"
LGPL3="$LOCAL_LICENSE_PATH/lgpl3.txt"
MIT="$LOCAL_LICENSE_PATH/mit.txt"
MPL2="$LOCAL_LICENSE_PATH/mpl2.txt"
UNLICENSE="$LOCAL_LICENSE_PATH/unlicense.txt"

# copy local licenses to current directory
alias cp-agpl3='cp $AGPL3 $DEST_LICENSE'
alias cp-agpl='cp $AGPL3 $DEST_LICENSE'
alias cp-apache2='cp $APACHE2 $DEST_LICENSE'
alias cp-apache='cp $APACHE2 $DEST_LICENSE'
alias cp-bsd2='cp $BSD2 $DEST_LICENSE'
alias cp-bsd3='cp $BSD3 $DEST_LICENSE'
alias cp-bsd='cp $BSD3 $DEST_LICENSE'
alias cp-bsl1='cp $BSL1 $DEST_LICENSE'
alias cp-bsl='cp $BSL1 $DEST_LICENSE'
alias cp-cc0='cp $CC0 $DEST_LICENSE'
alias cp-epl2='cp $EPL2 $DEST_LICENSE'
alias cp-epl='cp $EPL2 $DEST_LICENSE'
alias cp-gpl2='cp $GPL2 $DEST_LICENSE'
alias cp-gpl3='cp $GPL3 $DEST_LICENSE'
alias cp-gpl='cp $GPL3 $DEST_LICENSE'
alias cp-lgpl2='cp $LGPL2 $DEST_LICENSE'
alias cp-lgpl3='cp $LGPL3 $DEST_LICENSE'
alias cp-lgpl='cp $LGPL3 $DEST_LICENSE'
alias cp-mit='cp $MIT $DEST_LICENSE'
alias cp-mpl2='cp $MPL2 $DEST_LICENSE'
alias cp-mpl='cp $MPL2 $DEST_LICENSE'
alias cp-moz='cp $MPL2 $DEST_LICENSE'
alias cp-unlicense='cp $UNLICENSE $DEST_LICENSE'
alias cp-un='cp $UNLICENSE $DEST_LICENSE'

# license urls
U_AGPL3="https://www.gnu.org/licenses/agpl-3.0.txt"
U_APACHE2="https://www.apache.org/licenses/LICENSE-2.0.txt"
# U_BSD2="$LOCAL_LICENSE_PATH/bsd2.txt"
# U_BSD3="$LOCAL_LICENSE_PATH/bsd3.txt"
U_BSL1="https://www.boost.org/LICENSE_1_0.txt"
U_CC0="https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt"
# U_EPL2="$LOCAL_LICENSE_PATH/epl2.txt"
U_GPL2="https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt"
U_GPL3="https://www.gnu.org/licenses/gpl-3.0.txt"
U_LGPL2="https://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt"
U_LGPL3="https://www.gnu.org/licenses/lgpl-3.0.txt"
U_MIT="https://mit-license.org/license.txt"
U_MPL2="https://www.mozilla.org/media/MPL/2.0/index.48a3fe23ed13.txt"
U_UNLICENSE="https://unlicense.org/UNLICENSE"

# download license from web
alias get-agpl3='wget -O $DEST_LICENSE $U_AGPL3'
alias get-agpl='wget -O $DEST_LICENSE $U_AGPL3'
alias get-apache2='wget -O $DEST_LICENSE $U_APACHE2'
alias get-apache='wget -O $DEST_LICENSE $U_APACHE2'
# alias get-bsd2='wget -O $DEST_LICENSE $U_BSD2'
# alias get-bsd3='wget -O $DEST_LICENSE $U_BSD3'
# alias get-bsd='wget -O $DEST_LICENSE $U_BSD3'
alias get-bsl1='wget -O $DEST_LICENSE $U_BSL1'
alias get-bsl='wget -O $DEST_LICENSE $U_BSL1'
alias get-cc0='wget -O $DEST_LICENSE $U_CC0'
# alias get-epl2='wget -O $DEST_LICENSE $U_EPL2'
# alias get-epl='wget -O $DEST_LICENSE $U_EPL2'
alias get-gpl2='wget -O $DEST_LICENSE $U_GPL2'
alias get-gpl3='wget -O $DEST_LICENSE $U_GPL3'
alias get-gpl='wget -O $DEST_LICENSE $U_GPL3'
alias get-lgpl2='wget -O $DEST_LICENSE $U_LGPL2'
alias get-lgpl3='wget -O $DEST_LICENSE $U_LGPL3'
alias get-lgpl='wget -O $DEST_LICENSE $U_LGPL3'
alias get-mit='wget -O $DEST_LICENSE $U_MIT'
alias get-mpl2='wget -O $DEST_LICENSE $U_MPL2'
alias get-mpl='wget -O $DEST_LICENSE $U_MPL2'
alias get-moz='wget -O $DEST_LICENSE $U_MPL2'
alias get-unlicense='wget -O $DEST_LICENSE $U_UNLICENSE'
alias get-un='wget -O $DEST_LICENSE $U_UNLICENSE'
