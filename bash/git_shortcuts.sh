#!/bin/bash

GIT_USER='bvout'
GITHUB_URL='git@github.com:'
GITLAB_URL='git@gitlab.com:'

# aliases inspired by the oh my zsh git plugin https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git

# status
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'

# gui
alias gu='git gui'
alias gk='gitk'
alias gmt='git mergetool'

# create
alias gi='git init'
alias gcl='git clone'			# URL

# branches
alias gcm='git checkout main'
alias gcd='git checkout dev'
alias gcb='git checkout -b'		# NEW_BRANCH, switches to new branch
alias gm='git merge'			# BRANCH to merge into current branch
alias gmm='git merge -S -m'		# "MESSAGE" BRANCH to merge into current
function gmd() {				# merge dev into main
	git checkout main
	git merge dev
	git checkout dev
}
alias grb='git rebase'
function grbd() {				# rebase dev onto main
	git checkout main
	git rebase dev
	git checkout dev
}
alias gb='git branch'
alias gbd='git branch dev'
alias gbr='git branch -d'		# delete branch

# updating
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -S -m'		# "MESSAGE"
alias gci='git commit -S -m "initial commit"'
alias gp='git push'
function gpm() {
	git checkout main
	git push -u origin main
}
function gpd() {
	git checkout dev
	git push -u origin dev
}
alias gf='git fetch --all'
alias gpu='git pull'

# tracking
alias guu='git branch --unset-upstream'
alias gu='git branch -u'		# REMOTE/BRANCH, add tracking connection to current branch
function gtm() {
	git checkout main
	git branch -u origin/main
}
function gtd() {
	git checkout dev
	git branch -u origin/dev
}

# create remotes
function gr() {
	if [ -z "$1" ]
	then
		echo "Please enter a repo name."
	else
		git remote add origin $GITHUB_URL$GIT_USER/$1.git
		git remote add github $GITHUB_URL$GIT_USER/$1.git
		git remote add gitlab $GITLAB_URL$GIT_USER/$1.git
		git remote set-url --add --push origin $GITHUB_URL$GIT_USER/$1.git
		git remote set-url --add --push origin $GITLAB_URL$GIT_USER/$1.git
	fi
}

# rename master to main
function grn() {
	git branch -m master main		# change local
	git push -u origin main			# add main to remote
	git push origin --delete master	# delete master from remote, may need to update github/lab protections
}

# tags
function gt() {
	if [ -z "$1" ] || [ -z "$2" ]
	then
		echo "Please enter a tag name and message."
	else
		git tag -s "$1" -m "$2"
	fi
}
function gtl() {
	if [ -z "$1" ]
	then
		echo "Please enter a tag name."
	else
		git tag -s "$1" -lw
	fi
}
alias gtp='git push origin --tags'
