#!/bin/bash

function getsum() {
  getmd5 $1
  getsha1 $1
  getsha256 $1
  getsha512 $1
}

function getsums() {
  getsum $1
}

function getmd5() {
  local input="$1"
  local output=$(md5sum $input)
  echo -e "md5:\t$output"
}

function getsha1() {
  local input="$1"
  local output=$(shasum $input)
  echo -e "sha1:\t$output"
}

function getsha() {
  getsha1 $1
}

function getsha256() {
  local input="$1"
  local output=$(shasum -a 256 $input)
  echo -e "sha256:\t$output"
}

function getsha512() {
  local input="$1"
  local output=$(shasum -a 512 $input)
  echo -e "sha512:\t$output"
}
