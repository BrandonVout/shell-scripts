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
    echo "md5:"
    md5 $1
}

function getsha1() {
    echo "sha1:"
    shasum $1
}

function getsha() {
    getsha1 $1
}

function getsha256() {
    echo "sha256:"
    shasum -a 256 $1
}

function getsha512() {
    echo "sha512:"
    shasum -a 512 $1
}
