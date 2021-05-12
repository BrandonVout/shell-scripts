#!/bin/bash

# linters
alias lint-c='splint'					# clang
alias lint-cpp='cpplint'				# c++
alias lint-cpp-c='cppcheck'				# c++
alias lint-cpp-l='cpplint'				# c++
alias lint-dotenv='dotenv-linter'		# .env file
alias lint-epub='epubcheck'				# epub
alias lint-rm='rmlint'					# filesystem
alias lint-git='gitlint'				# git commit message
alias lint-go='golangci-lint run'		# golang
alias lint-go-f='go fmt'				# golang
alias lint-go-g='golangci-lint run'		# golang
alias lint-go-r='revive'				# golang
alias lint-go-s='staticcheck'			# golang
alias lint-go-v='go vet'				# golang
alias lint-hs='hlint'					# haskell
alias lint-html='tidy'					# html
alias lint-link='linklint'				# html links
alias lint-java='checkstyle'			# java
alias lint-js='eslint'					# javascript
alias lint-json='jsonlint'				# .json file
alias lint-kotlin='ktlint'				# kotlin
alias lint-kt='ktlint'					# kotlin
alias lint-latex='style-check.rb'		# latex
alias lint-md='markdownlint-cli'		# markdown
alias lint-mp3='mp3check'				# mp3
alias lint-perl='perltidy'				# perl
alias lint-prose='write-good'			# prose
alias lint-prose-pl='proselint'			# prose
alias lint-prose-r='redpen'				# prose
alias lint-prose-v='vale'				# prose
alias lint-prose-wg='write-good'		# prose
alias lint-py='pylint'					# python
alias lint-py-f='flake8'				# python
alias lint-py-p='pylint'				# python
alias lint-rst='rst-lint'				# restructured text
alias lint-shell='shellcheck'			# shell script
alias lint-shell-b='checkbashisms'		# shell script
alias lint-shell-c='shellcheck'			# shell script
alias lint-shell-f='shfmt'				# shell script
alias lint-swift='swiftlint'			# swift
alias lint-vim='vint'					# vim script
alias lint-yaml='yamllint'				# yaml

# checkbashisms
alias cb='checkbashisms'				# file

# checkstyle
alias cs='checkstyle'					# file1 [file2]...

# cppcheck
alias cppc='cppcheck'					# file1 [file2] [dir]...

# cpplint
alias cppl='cpplint'					# file1 [file2]...

# dotenv-linter
alias denv='dotenv-linter'
alias denvc='dotenv-linter compare'		# file1 file2
alias denvf='dotenv-linter fix'

# epubcheck
alias epc='epubcheck'					# file
alias epcd='epubcheck --profile dict'
alias epce='epubcheck --profile edupub'
alias epci='epubcheck --profile idx'
alias epcp='epubcheck --profile preview'

# eslint
alias esl='eslint'						# file1 [file2] [dir]...

# flake8
alias f8='flake8'						# file

# gitlint
alias gitl='gitlint'					# Check the last commit message

# golangci-lint
alias gol='golangci-lint run'			# file1 [file2] [dir]...
alias golh='golangci-lint help linters'
alias goll='golangci-lint linters'

# hlint
alias hl='hlint'						# file/dir

# jsonlint
alias jsonl='jsonlint'					# file

# ktlint
alias ktl='ktlint'						# file1 [file2]...

# linklint
alias linkl='linklint'

# markdownlint-cli
alias mdl='markdownlint-cli'			# file1 [file2] [dir]...

# mp3check
alias lint-mp3='mp3check'				# file1 [file2] [dir]...

# perltidy
alias pt='perltidy'						# file1 [file2]... OR file1 -o outfile

# proselint
alias prose='proselint'					# file

# pylint
alias pyl='pylint'

# redpen
alias rp='redpen'						# file1 [file2]...

# revive
alias rvi='revive'

# rmlint
alias rml='rmlint'						# path

# rst-lint
alias rstl='rst-lint'					# file1 [file2]...

# shellcheck
alias shc='shellcheck'					# file

# shfmt
alias sf='shfmt'						# path

# splint
alias spl='splint'

# staticcheck
alias stc='staticcheck'					# packages

# style-check
alias stch='style-check.rb'				# file

# swiftlint
alias swl='swiftlint'

# tidy
alias td='tidy'							# file

# vale
alias vl='vale'							# file1 [file2] [dir]...

# vint
alias vt='vint'							# file

# write-good
alias wg='write-good'					# file
alias wgh='write-good --help'
# write-good --text="use this to lint strings without loading a file"
alias wgep='write-good --yes-eprime'	# use E-Prime
alias wgp='write-good --parse'			# output parse-happy
alias wgi='write-good --illusion'		# lexical illusions, cases where a word is repeated.
alias wgti='write-good --thereIs'		# checks for "there is" or "there are" at the beginning of the sentence.
alias wgpa='write-good --passive'
alias wgnpa='write-good --no-passive'
alias wgad='write-good --adverb'		# really, very, extremely, etc.
alias wgnad='write-good --no-adverb'
alias wgtw='write-good --tooWordy'
alias wgw='write-good --weasel'
alias wgc='write-good --cliches'

# yamllint
alias yl='yamllint'						# file
