#!/bin/bash

# creates template ignore files in current directory

# destination
DEST_GIT="./.gitignore"
DEST_HG="./.hgignore"

# local ignore locations
LOCAL_IGNORE_PATH="$HOME/.ignores"
GITIGNORE_OS="$LOCAL_IGNORE_PATH/gitignore.os.txt"		# ignore OS files/folders (macOS, linux, windows)
GITIGNORE_ED="$LOCAL_IGNORE_PATH/gitignore.ed.txt"		# ignore editor files/folders (sublime text, vscode, visual studio code, vim, emacs, kate)
GITIGNORE_JB="$LOCAL_IGNORE_PATH/gitignore.jb.txt"		# ignore JetBrains files/folders (all ides)
GITIGNORE_VS="$LOCAL_IGNORE_PATH/gitignore.vs.txt"		# ignore Visual Studio files/folders (not Code)
GITIGNORE_IDE="$LOCAL_IGNORE_PATH/gitignore.ide.txt"	# ignore files/folders from other IDEs (kdevelop4, kdiff3, monodevelop, netbeans, eclipse, xcode, xcodeinjection, xamarinstudio, komodoedit)
GITIGNORE_QT="$LOCAL_IGNORE_PATH/gitignore.qt.txt"		# ignore Qt files/folders (Qt & Qt Creator)
GITIGNORE_LANG="$LOCAL_IGNORE_PATH/gitignore.lang.txt"	# ignore language files/folders (c++, python, java, rust, go, lua, kotlin, zsh, c#, nodejs)
GITIGNORE_BUILD="$LOCAL_IGNORE_PATH/gitignore.build.txt"	# ignore build files/folders (ninja, cmake)
GITIGNORE_VCS="$LOCAL_IGNORE_PATH/gitignore.vcs.txt"		# ignore vcs files/folders (git, mercurial, cvs, svn, bazaar)

# copy local ignore to current directory
alias cp-gitignore='cat $GITIGNORE_OS $GITIGNORE_ED > $DEST_GIT'	# default .gitignore
alias cp-gitignore-os='cp $GITIGNORE_OS $DEST_GIT'
alias cp-gitignore-editor='cp $GITIGNORE_ED $DEST_GIT'
alias cp-gitignore-ed='cp $GITIGNORE_ED $DEST_GIT'
alias cp-gitignore-jetbrains='cp $GITIGNORE_JB $DEST_GIT'
alias cp-gitignore-jb='cp $GITIGNORE_JB $DEST_GIT'
alias cp-gitignore-visualstudio='cp $GITIGNORE_VS $DEST_GIT'
alias cp-gitignore-vs='cp $GITIGNORE_VS $DEST_GIT'
alias cp-gitignore-ide='cp $GITIGNORE_IDE $DEST_GIT'
alias cp-gitignore-qt='cp $GITIGNORE_QT $DEST_GIT'
alias cp-gitignore-language='cp $GITIGNORE_LANG $DEST_GIT'
alias cp-gitignore-lang='cp $GITIGNORE_LANG $DEST_GIT'
alias cp-gitignore-build='cp $GITIGNORE_BUILD $DEST_GIT'
alias cp-gitignore-vcs='cp $GITIGNORE_VCS $DEST_GIT'
alias cp-gi='cat $GITIGNORE_OS $GITIGNORE_ED > $DEST_GIT'	# default .gitignore
alias cp-gi-os='cp $GITIGNORE_OS $DEST_GIT'
alias cp-gi-editor='cp $GITIGNORE_ED $DEST_GIT'
alias cp-gi-ed='cp $GITIGNORE_ED $DEST_GIT'
alias cp-gi-jetbrains='cp $GITIGNORE_JB $DEST_GIT'
alias cp-gi-jb='cp $GITIGNORE_JB $DEST_GIT'
alias cp-gi-visualstudio='cp $GITIGNORE_VS $DEST_GIT'
alias cp-gi-vs='cp $GITIGNORE_VS $DEST_GIT'
alias cp-gi-ide='cp $GITIGNORE_IDE $DEST_GIT'
alias cp-gi-qt='cp $GITIGNORE_QT $DEST_GIT'
alias cp-gi-language='cp $GITIGNORE_LANG $DEST_GIT'
alias cp-gi-lang='cp $GITIGNORE_LANG $DEST_GIT'
alias cp-gi-build='cp $GITIGNORE_BUILD $DEST_GIT'
alias cp-gi-vcs='cp $GITIGNORE_VCS $DEST_GIT'

# concatinate .gitignore to end of existing .gitignore
alias cat-gitignore='cat $GITIGNORE_OS >> $DEST_GIT && cat $GITIGNORE_ED >> $DEST_GIT'	# default .gitignore
alias cat-gitignore-os='cat $GITIGNORE_OS >> $DEST_GIT'
alias cat-gitignore-editor='cat $GITIGNORE_ED >> $DEST_GIT'
alias cat-gitignore-ed='cat $GITIGNORE_ED >> $DEST_GIT'
alias cat-gitignore-jetbrains='cat $GITIGNORE_JB >> $DEST_GIT'
alias cat-gitignore-jb='cat $GITIGNORE_JB >> $DEST_GIT'
alias cat-gitignore-visualstudio='cat $GITIGNORE_VS >> $DEST_GIT'
alias cat-gitignore-vs='cat $GITIGNORE_VS >> $DEST_GIT'
alias cat-gitignore-ide='cat $GITIGNORE_IDE >> $DEST_GIT'
alias cat-gitignore-qt='cat $GITIGNORE_QT >> $DEST_GIT'
alias cat-gitignore-language='cat $GITIGNORE_LANG >> $DEST_GIT'
alias cat-gitignore-lang='cat $GITIGNORE_LANG >> $DEST_GIT'
alias cat-gitignore-build='cat $GITIGNORE_BUILD >> $DEST_GIT'
alias cat-gitignore-vcs='cat $GITIGNORE_VCS >> $DEST_GIT'
alias cat-gi='cat $GITIGNORE_OS >> $DEST_GIT && cat $GITIGNORE_ED >> $DEST_GIT'	# default .gitignore
alias cat-gi-os='cat $GITIGNORE_OS >> $DEST_GIT'
alias cat-gi-editor='cat $GITIGNORE_ED >> $DEST_GIT'
alias cat-gi-ed='cat $GITIGNORE_ED >> $DEST_GIT'
alias cat-gi-jetbrains='cat $GITIGNORE_JB >> $DEST_GIT'
alias cat-gi-jb='cat $GITIGNORE_JB >> $DEST_GIT'
alias cat-gi-visualstudio='cat $GITIGNORE_VS >> $DEST_GIT'
alias cat-gi-vs='cat $GITIGNORE_VS >> $DEST_GIT'
alias cat-gi-ide='cat $GITIGNORE_IDE >> $DEST_GIT'
alias cat-gi-qt='cat $GITIGNORE_QT >> $DEST_GIT'
alias cat-gi-language='cat $GITIGNORE_LANG >> $DEST_GIT'
alias cat-gi-lang='cat $GITIGNORE_LANG >> $DEST_GIT'
alias cat-gi-build='cat $GITIGNORE_BUILD >> $DEST_GIT'
alias cat-gi-vcs='cat $GITIGNORE_VCS >> $DEST_GIT'
