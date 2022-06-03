#!/bin/bash

# update all package managers
function update-all() {
	printf "Updating every package manager...\n"
	printf '%80s\n' | tr ' ' -
	# npm outdated
	# npm update
	# rustup update
	# rustup self update
	# gem list outdated
	# gem update
	# gem cleanup
	# bundle update GEM_NAME
	# bundle update --patch --conservative GEM_NAME
	# bundle update
	# sudo port selfupdate
	# sudo port upgrade outdated
	# sudo port clean --all installed
	# sudo port reclaim
	# sudo port diagnose
	# brew update && brew upgrade && brew cask upgrade && brew cleanup && brew doctor
	brew update
	brew upgrade
	brew upgrade --cask
	# brew cleanup
	# pip list --outdated
	# pip install --upgrade PACKAGE_NAME
	# pip2 list --outdated
	# pip2 install --upgrade PACKAGE_NAME
	pip3 list --outdated
	# pip3 install --upgrade PACKAGE_NAME
	printf '%80s\n' | tr ' ' -
	printf "Updates finished!\n"
}

function check-all() {
	printf "Checking for updates...\n"
	printf '%80s\n' | tr ' ' -
	# npm outdated
	# rustup check
	# gem list outdated
	# pip check
	# pip list --outdated
	# pip2 check
	# pip2 list --outdated
	pip3 check
	pip3 list --outdated
	printf '%80s\n' | tr ' ' -
	printf "Checks finished!\n"
}

function clean-all() {
	printf "Cleaning packages...\n"
	printf '%80s\n' | tr ' ' -
	# gem cleanup
	brew cleanup
	# sudo port clean --all installed
	# sudo port reclaim
	printf '%80s\n' | tr ' ' -
	printf "Cleaning finished!\n"
}

function clean-update-all() {
	update-all
	clean-all
}

function update-clean-all() {
	update-all
	clean-all
}

function doctor-all() {
	printf "Calling doctor...\n"
	printf '%80s\n' | tr ' ' -
	# npm doctor
	brew doctor
	# bundle doctor
	# sudo port diagnose
	printf '%80s\n' | tr ' ' -
	printf "Doctor finished!\n"
}

# aliases
alias pipup='pip3 install -U'	# pip3 install --upgrade PACKAGE_NAME
