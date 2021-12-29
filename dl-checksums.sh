#!/usr/bin/env sh
#set -x
DIR=~/Downloads
MIRROR=https://github.com/secrethub/secrethub-cli/releases/download
APP=secrethub

dl() {
    local ver=$1
    local lchecksums=$2
    local os=$3
    local arch=$4
    local archive_type=${5:-tar.gz}
    local platform="${os}-${arch}"
    local file="${APP}-${ver}-${platform}.${archive_type}"
    local url=$MIRROR/$ver/$file
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(grep $file $lchecksums | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    local checksums="${APP}-${ver}-checksums.txt"
    local url=$MIRROR/$ver/$checksums
    local lchecksums="$DIR/${checksums}"
    if [ ! -e $lchecksums ];
    then
        wget -q -O $lchecksums $url
    fi

    printf "  # %s\n" $url
    printf "  %s:\n" $ver

    dl $ver $lchecksums darwin amd64
    dl $ver $lchecksums linux 386
    dl $ver $lchecksums linux amd64
    dl $ver $lchecksums linux arm64
    dl $ver $lchecksums linux armv5
    dl $ver $lchecksums linux armv6
    dl $ver $lchecksums linux armv7
    dl $ver $lchecksums windows 386 zip
    dl $ver $lchecksums windows amd64 zip
}

dl_ver ${1:-v0.43.0}
